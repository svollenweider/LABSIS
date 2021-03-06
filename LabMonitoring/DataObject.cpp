
#include "DataObject.h"
#include "NetworkSettings.h"
#include <math.h>

void DataObject::LogTemp(float value){
    Temperature += (value-Temperature)/(++TDataPoints);
}
void DataObject::LogPres(float value){
    Pressure += (value-Pressure)/(++PDataPoints);
}

void DataObject::LogHum(float value){
    Pressure += (value-Humidity)/(++HDataPoints);
}

void DataObject::LogAcc(float x,float y,float z){
    float absvalue = sqrt(x*x+y*y+z*z);
    AvgAcc += (absvalue-AvgAcc)/(++ADataPoints);
    if(absvalue>MaxAcc) {
        MaxAcc = absvalue;
    }
}

void DataObject::LogMagField(float x,float y, float z){
    ++MDataPoints;
    float value[] = {x,y,z};
    for(int i = 0; i<3; ++i){
        AvgMagField[i] += (value[i]-AvgMagField[i])/(MDataPoints);
    }
    float absvalue = sqrt(value[0]*value[0]+value[1]*value[1]+value[2]*value[2]);
    if(absvalue>MaxMagAbsField) {
        MaxMagAbsField = absvalue;
        memcpy(MaxMagField,value,sizeof(value));
    }
}


//Gets measurement and resets the class
String DataObject::getMeasurements(String separator){
    String sensorname = SENSORNAME;
    String retstring =  "Temperature,sensor=" + sensorname + " value=" + String(Temperature) + separator + 
                        "Pressure,sensor=" + sensorname + " value=" + String(Pressure) + separator +
                        "Humidity,sensor=" + sensorname + " value=" + String(Humidity) + separator +
                        "Acceleration,sensor=" + sensorname + " Max=" + String(MaxAcc) + ",Avg=" + String(AvgAcc) + separator +
                        "MagField,sensor=" + sensorname + " x_max=" + String(MaxMagField[0]) + ",y_max=" + String(MaxMagField[1])+ ",z_max=" + String(MaxMagField[2]) + 
                        ",x_avg=" + String(AvgMagField[0]) + ",y_avg=" + String(AvgMagField[1])+ ",z_avg=" + String(AvgMagField[2]);
    *this = DataObject();
    return retstring;
}
