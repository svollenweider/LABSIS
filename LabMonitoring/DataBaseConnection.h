#ifndef DATABASECOM
#include "DataObject.h"

class DataBaseConnection {
  virtual void WriteToDataBase(DataObject &Data) = 0;
	virtual ~DataBaseConnection() = 0;
};

DataBaseConnection::~DataBaseConnection(){} //Compulsory Destructor
