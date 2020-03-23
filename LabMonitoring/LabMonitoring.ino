
//TemperatureSensor
#include <Adafruit_MCP9808.h>
//Pressure,Humidity
#include <Adafruit_BME280.h>
//Accelerometer from the Nano, modified library from Arduino
#include "LSM6DS3/Arduino_LSM6DS3.h"
//I2C
#include <Wire.h>
//Magnetic Fields
#include "ALS31300/ALS31300.h"
//RealTimeClock
#include <RTCZero.h>
//NTP updating the time
#include <NTPClient.h>
//Wifi
#include <WiFiNINA.h>
#include <WiFiUDP.h>
//DataObject
#include "DataObject.h"

Adafruit_BME280 bme;
Adafruit_MCP9808 tempsensor;

//Adress according to Wiring and Spec Sheet
ALS31300 Mag(0x96);


unsigned int millitempupdate = 500;
unsigned int millimagupdate = 100;
unsigned int milliaccupdate = 10;
//some large number that the loop starts immediately
unsigned long prevMillis = 0xF000000000000000;
unsigned long millisec = 0;
DataObject Data;

RTCZero rtc;
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP);

void setup() {
  //Enable I²C
  Wire.begin();
  // Enable Serial port for debugging
  Serial.begin(9600);
  while (!Serial);
  // Sync the Time with an online service
  SyncRTC();
  //init Temperature Sensor
  if(!tempsensor.begin(0x18)){
    Serial.println("Temp Sensor not found");
    }
  tempsensor.setResolution(3);
  //Init BME280
  if (! bme.begin(0x77, &Wire)) {
      Serial.println("Could not find a valid BME280 sensor, check wiring or adress!");
      while (1);
  }
  bme.setSampling(Adafruit_BME280::MODE_NORMAL,
                  Adafruit_BME280::SAMPLING_X1,   // temperature
                  Adafruit_BME280::SAMPLING_X4,   // pressure
                  Adafruit_BME280::SAMPLING_NONE, // humidity
                  Adafruit_BME280::FILTER_X16,
                  Adafruit_BME280::STANDBY_MS_0_5 );
   //init Magnetic Field Sensor
   Mag.init();
   //Set up accelerometer
   IMU.begin(false)
   IMU.SetAccelerometer(0x00,)
}

void loop() {
  millisec = millis();
  // update temperature sensor value if {millitempupdate} milliseconds have passed
  if(millisec-prevMillis >= millitempupdate){
    float val = tempsensor.readTempC();
    Data.LogTemp(val);
    val = bme.readHumidity();
    Data.LogHum(val);
    val = bme.readPressure();
    Data.LogPres(val);
  }
  if(millisec-prevMillis >= millimagupdate){
    auto value = Mag.readFullLoop();
    Data.LogMagField(value.mx,value.my,value.mz);
  }
  if(millisec-prevMillis >= milliaccupdate){
    auto value = Mag.readFullLoop();
    Data.LogMagField(value.mx,value.my,value.mz);
  }
  prevMillis=millisec;
  
  Serial.print("Loop took ");
  Serial.print(millis()-millisec);
  Serial.print(" seconds\n");
}

void SyncRTC(){
    timeClient.update();
    rtc.setEpoch(timeClient.getEpochTime());
 }
