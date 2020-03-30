#include "InfluxDBConnection.h"
#include "DataObject.h"

InfluxDBConnection::InfluxDBConnection(String deviceName, String adress, String dbName, String username, String password) : 
    adress(adress), deviceName(deviceName)
    {
        dataBaseString = "POST /write?db=" + dbName + "precision=s&u=" + username + "&p=" + password + " HTTP/1.1";
    }

InfluxDBConnection::InfluxDBConnection(String deviceName, String adress, String dbName, String accessToken) : 
    adress(adress), deviceName(deviceName){
        dataBaseString = "POST /write?db=" + dbName + "&precision=s&b=" + accessToken + " HTTP/1.1";
    }

bool InfluxDBConnection::writeToDataBase(DataObject &Data){
    //if connection successful
    if(client.connectSSL(adress.c_str(),port)){
        client.println(dataBaseString);
        client.println("Connection: close");
        client.println("User-Agent: Arduino");
        client.print("Content-Length:");
        String DataString = Data.getMeasurements("\n");
        //String Length maybe needs a -1
        client.println(DataString.length());
        client.println();
        client.println(DataString);
        bool successful = client.connected();
        client.stop();
        return successful;
    }

}