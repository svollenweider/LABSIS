// ALS31300.h
#ifndef _ALS31300_h
#define _ALS31300_h

/********************************
        Included Libraries
*********************************/

#include <Wire.h>
#include "arduino.h"

/********************************
            Constants
*********************************/

// Return values of endTransmission in the Wire library
#define kNOERROR 0
#define kDATATOOLONGERROR 1
#define kRECEIVEDNACKONADDRESSERROR 2
#define kRECEIVEDNACKONDATAERROR 3
#define kOTHERERROR 4

/********************************
           Data Types
*********************************/

typedef uint16_t ALS_ERROR;

typedef struct _cal_vals {
  int x;
  int y;
  int z;
} CAL_VALS;

typedef struct _sensor_data {
  // Raw sensor value
  int x;
  int y;
  int z;

  // Gauss value
  float mx;
  float my;
  float mz;

  // radian values
  float rx;
  float ry;
  float rz;

  // Use a four quadrant Arc Tan to convert 2
  // axis to an angle (which is in radians) then
  // convert the angle from radians to degrees
  // for display.
  float angleXY;
  float angleXZ;
  float angleYZ;

  uint8_t i2c_error;

} SENSOR_DATA;

/********************************
            Classes
*********************************/

class ALS31300 {

  public:
  
    // public static functions
    ALS31300(int device_address);    
    static void printData(SENSOR_DATA* data);

    // public member functions
    SENSOR_DATA updateReading();
    SENSOR_DATA readFullLoop(int samples=12);
    void init();
    bool initOK();

    ALS_ERROR read(int busAddress, uint8_t address, uint32_t& value);
    ALS_ERROR write(int busAddress, uint8_t address, uint32_t value);

  private:
    // private static vars
    static bool i2c_is_initialized;

    // private static functions
    static long SignExtendBitfield(uint32_t data, int width);

    // private member vars
    int i2c_address;
    CAL_VALS cal_vals = {0};
    bool init_succeeded = false;

    // private member functions
   
};

/********************************
          Extern Vars
*********************************/
extern ALS31300 ALS;

#endif
