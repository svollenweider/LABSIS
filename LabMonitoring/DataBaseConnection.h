#ifndef DATABASECON
#define DATABASECON
#include "DataObject.h"

class DataBaseConnection {
public:
  virtual bool writeToDataBase(DataObject &Data){return false;};
};

#endif