
#include "DataObject.h"
#include <math.h>
#include <string.h>

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
