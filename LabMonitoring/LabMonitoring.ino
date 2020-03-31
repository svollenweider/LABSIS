#include "NetworkSettings.h"
//TemperatureSensor Set Arduino variable to set ADAFRuit correctly
#include <Adafruit_MCP9808.h>
//Pressure,Humidity
#include <Adafruit_BME280.h>
//Accelerometer from the Nano, modified library from Arduino
#include "LSM6DS3.h"
//I2C
#include <Wire.h>
//Magnetic Fields
#include "ALS31300.h"
//RealTimeClock
#include <RTCZero.h>
//NTP updating the time
#include <NTPClient.h>
//Wifi
#include <WiFiNINA.h>
#include <WiFiUDP.h>
//DataObject
#include "DataObject.h"
#include "DataBaseConnection.h"
#include "InfluxDBConnection.h"

Adafruit_BME280 bme;
Adafruit_MCP9808 tempsensor;
InfluxDBConnection DBConn = InfluxDBConnection("192.168.0.172","LabMonitoring", INFLUXUSERNAME,INFLUXDBPASSWORD);

//Adress according to Wiring and Spec Sheet
ALS31300 Mag(0x96);

//updateinterval to database (s)
unsigned int databaseinterval = 10;
//updateinterval for the sensors (ms)
unsigned long millitempupdate = 500;
unsigned long millimagupdate = 100;
//some large number that the loop starts immediately
unsigned long prevMillis = (unsigned long)0xFFFFFFFFFFFFFFF;
unsigned long millisec = 0;
DataObject Data;
int lastsavedseconds = -1;
//validity of sensors
bool tempValid;
bool bmeValid;
bool magValid;
bool imuValid;

RTCZero rtc;
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP);

void setup() {
  // Enable Serial port for debugging, Setup LED pin
  pinMode(13,OUTPUT);
  digitalWrite(13,HIGH);
  Serial.begin(9600);
  //Comment if WPA2, Uncomment for WPA2 enterprise
  //WiFi.beginEnterprise(NETWORKSSID,USERNAME,PASSWORD);
  //Uncomment if WPA2, comment for WPA2 enterprise
  WiFi.begin(NETWORKSSID,PASSWORD);
  while(WiFi.status() != WL_CONNECTED){
    Serial.println("Waiting for connection");
    if(WiFi.status() == 6){
      WiFi.end();
      delay(1000);
      WiFi.begin(NETWORKSSID,PASSWORD);
    }
    //Serial.println(WiFi.status());
    delay(1000);
  }
  WiFi.lowPowerMode();
  digitalWrite(13,LOW);
  Serial.print("Connected to ");
  Serial.println(NETWORKSSID);
  //Alarm at 2 AM to set the clock
  //Enable I²C
  Wire.begin();
  // Sync the Time with an online service
  timeClient.begin();
  rtc.begin();
  SyncRTC();
  rtc.setAlarmTime(2,0,0);
  rtc.enableAlarm(RTCZero::Alarm_Match::MATCH_HHMMSS);
  rtc.attachInterrupt(SyncRTC);
  Serial.print("Time: ");
  Serial.print(rtc.getHours());
  Serial.print(":");
  Serial.print(rtc.getMinutes());
  Serial.print(":");
  Serial.println(rtc.getSeconds());
  //init Temperature Sensor
  tempValid = tempsensor.begin(0x18);
  if(!tempValid){
    Serial.println("Temp Sensor not found");
    }
  tempsensor.setResolution(3);
  //Init BME280
  bmeValid = bme.begin(0x77, &Wire);
  if (!bmeValid) {
      Serial.println("Could not find a valid BME280 sensor, check wiring or adress!");
  }
  bme.setSampling(Adafruit_BME280::MODE_NORMAL,
                  Adafruit_BME280::SAMPLING_X1,   // temperature
                  Adafruit_BME280::SAMPLING_X4,   // pressure
                  Adafruit_BME280::SAMPLING_NONE, // humidity
                  Adafruit_BME280::FILTER_X16,
                  Adafruit_BME280::STANDBY_MS_0_5 );
   //init Magnetic Field Sensor
   magValid=Mag.init();
   //Set up accelerometer
   imuValid = IMU.begin();
   if(imuValid){
     //IMU.setAccelerometer(B01000011,B00000000); //104hz,2g,50hz filter
     IMU.setGyroscope(B00000000,B00000000); // Power-down gyroscope
   }
   else{
     Serial.println("IMU error");
    }
   Serial.println("Setup complete");
}

void loop() {
  millisec = millis();
  // update temperature,pressure and humidity values if {millitempupdate} milliseconds have passed
  if(millisec-prevMillis >= millitempupdate){
    if(tempValid){
      float val = tempsensor.readTempC();
      Data.LogTemp(val);
    }
    if(bmeValid){
      float val = bme.readHumidity();
      Data.LogHum(val);
      val = bme.readPressure();
      Data.LogPres(val);
    }
  }
  // update temperature sensor value if {millimagupdate} milliseconds have passed
  if(millisec-prevMillis >= millimagupdate && magValid){
    auto value = Mag.readFullLoop();
    Data.LogMagField(value.mx,value.my,value.mz);
  }
  //get accelerometer data
  if(imuValid && IMU.accelerationAvailable()){
    float x,y,z;
    auto value = IMU.readAcceleration(x,y,z);
    Data.LogAcc(x,y,z);
    }
  //set current Millis
  prevMillis=millisec;
  int newseconds = rtc.getSeconds();
  //save whenever clock is at 0 in the last digit, only save once
  if(!(newseconds%10) && lastsavedseconds != newseconds){
    digitalWrite(13,HIGH);
    lastsavedseconds = newseconds;
    bool success = DBConn.writeToDataBase(Data);
    if(success){
      Serial.println("Success");
    }
    else{
      Serial.println("Fail");
    }
    digitalWrite(13,LOW);
    }
  delay(5);
}

void SyncRTC(){
    timeClient.forceUpdate();
    rtc.setEpoch(timeClient.getEpochTime());
 }
