class DataObject{
public:  
  void LogTemp(float value);
  void LogPres(float value);
  void LogHum(float value);
  void LogAcc(float value[3]);
  void LogMagField(float value[3]);
private:
  float Temperature = 0;
  unsigned int TDataPoints;
  float Pressure = 0;
  unsigned int PDataPoints;
  float Humidity = 0;
  unsigned int HDataPoints;
  float AvgAcc = 0;
  float MaxAcc = 0;
  unsigned int ADataPoints;
  float AvgMagField[3] = {0,0,0};
  float MaxMagField[3] = {0,0,0};
  float MaxMagAbsField = 0;
  unsigned int MDataPoints;
};