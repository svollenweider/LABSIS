
//TemperatureSensor
#include <Adafruit_MCP9808.h>
//Pressure,Humidity
#include <Adafruit_BME280.h>
//Magnetic Fields
#include "ALS31300.h"
//RealTimeClock
#include <RTCZero.h>
//NTP updating the time
#include <NTPClient.h>
//Wifi
#include <WiFiNINA.h>
#include <WiFiUDP.h>

struct DataStruct{
  float Temperature;
  float Pressure;
  float Humidity;
};

bool bFlagReset = false;

Adafruit_BME280 bme;
RTCZero rtc;
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP);

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:
}
