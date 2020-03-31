#ifndef INFLUXDBCONNECTION
#define INFLUXDBCONNECTION
#include "Arduino.h"
#include "DataBaseConnection.h"
#include "WiFiNINA.h"

class InfluxDBConnection : public DataBaseConnection {
public:
  InfluxDBConnection(String adress, String dbName, String username, String password);
  InfluxDBConnection(String adress, String dbName, String accessToken);
  virtual bool writeToDataBase(DataObject &Data) override;
private:
  WiFiClient client;
  String adress;
  String deviceName;
  String dataBaseString;
  const uint32_t port = (uint32_t)8086;
};


#endif
