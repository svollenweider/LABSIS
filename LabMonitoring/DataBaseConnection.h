#include "DataObject.h"

class DataBase {
	virtual void WriteToDataBase(string Command) = 0;
	virtual ~DataBase() = 0;
};

Base::~Base(){} //Compulsory Destructor