#ifndef INFLUXDBCONNECTION
#include "DataBaseConnection.h"
#include "WiFiNINA.h"

class InfluxDBConnection : public DataBaseConnection {
public:
  InfluxDBConnection(String deviceName, String adress, String dbName, String username, String password);
  InfluxDBConnection(String deviceName, String adress, String dbName, String accessToken);
  virtual bool writeToDataBase(DataObject &Data);
private:
  WiFiSSLClient client;
  String adress;
  String deviceName;
  String dataBaseString;
  const uint8_t port = (uint8_t)8086;
};


#endif