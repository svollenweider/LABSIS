
//TemperatureSensor
#include <Adafruit_MCP9808.h>
//Pressure,Humidity
#include <Adafruit_BME280.h>
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

Adafruit_BME280 bme;
Adafruit_MCP9808 tempsensor;

//Adress according to Wiring and Spec Sheet
ALS31300 Mag(0x96);


unsigned int millitempupdate = 500;
unsigned long prevMillis = 0;
unsigned long millisec = 0;
DataObject Data;

RTCZero rtc;
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP);

void setup() {
  //Enable I²C
  Wire.begin()
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
}

void loop() {
  millisec = millis();
  // update temperature sensor value if {millitempupdate} milliseconds have passed
  if(millisec-prevMillis >= millitempupdate){
    float temp = tempsensor.readTempC();
    Data.LogTemp(temp);
  }
  prevMillis=millisec;
  Mag.
}

void SyncRTC(){
    timeClient.update();
    rtc.setEpoch(timeClient.getEpochTime());
 }
