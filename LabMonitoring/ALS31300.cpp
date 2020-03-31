/********************************
        Included Libraries
*********************************/
#include "ALS31300.h"
#include <math.h>
#include "arduino.h"

/********************************
            Constants
*********************************/

#define M_TWOPI (2 * M_PI)

/********************************
           Static Vars
*********************************/

bool ALS31300::i2c_is_initialized = false;

/********************************
         Static Functions
*********************************/

ALS31300::ALS31300(int device_address) {
  i2c_address = device_address;
}

bool ALS31300::init() {

  // Enter customer access mode on the ALS31300
  ALS_ERROR error = write(i2c_address, 0x24, 0x2C413534);
  if (error == kNOERROR) {
    Serial.println("Sensor ok!");
    init_succeeded = true;

    // Take a bunch of samples initially to get a baseline reading
    SENSOR_DATA data = readFullLoop(200);
    cal_vals.x = data.x;
    cal_vals.y = data.y;
    cal_vals.z = data.z;
  }
  else {
    Serial.println("Sensor error!");
    init_succeeded = false;
  }
  return init_succeeded;
}

bool ALS31300::initOK() {
  return init_succeeded;
}

// updateReading
//
// Read the X, Y, Z values from Register 0x28 and 0x29
SENSOR_DATA ALS31300::updateReading()
{
  uint32_t value0x27;

  // The data structure to return
  SENSOR_DATA data = {0};

  // Read the register the I2C loop mode is in
  data.i2c_error = read(i2c_address, 0x27, value0x27);
  if (data.i2c_error != kNOERROR)
  {
    return data;
  }

  // I2C loop mode is in bits 2 and 3 so mask them out
  // and set them to the no loop mode
  value0x27 = (value0x27 & 0xFFFFFFF3) | (0x0 << 2);

  // Write the new values to the register the I2C loop mode is in
  data.i2c_error = write(i2c_address, 0x27, value0x27);
  if (data.i2c_error != kNOERROR)
  {
    return data;
  }

  // Write the address that is going to be read from the ALS31300
  Wire.beginTransmission(i2c_address);
  Wire.write(0x28);
  uint16_t error = Wire.endTransmission(false);
  //I dont think this line is neccessary
  //delay(50);
  // The ALS31300 accepted the address
  if (error == kNOERROR)
  {
    // Start the read and request 8 bytes
    // which are the contents of register 0x28 and 0x29
    Wire.requestFrom(i2c_address, 8);

    // Read the first 4 bytes which are the contents of register 0x28
    uint32_t value0x28 = Wire.read() << 24;
    value0x28 += Wire.read() << 16;
    value0x28 += Wire.read() << 8;
    value0x28 += Wire.read();

    // Read the next 4 bytes which are the contents of register 0x29
    uint32_t value0x29 = Wire.read() << 24;
    value0x29 += Wire.read() << 16;
    value0x29 += Wire.read() << 8;
    value0x29 += Wire.read();

    // Take the most significant byte of each axis from register 0x28 and combine it with the least
    // significant 4 bits of each axis from register 0x29, then sign extend the 12th bit.
    data.x = SignExtendBitfield(((value0x28 >> 20) & 0x0FF0) | ((value0x29 >> 16) & 0x0F), 12);
    data.y = SignExtendBitfield(((value0x28 >> 12) & 0x0FF0) | ((value0x29 >> 12) & 0x0F), 12);
    data.z = SignExtendBitfield(((value0x28 >> 4) & 0x0FF0) | ((value0x29 >> 8) & 0x0F), 12);

    // Look at the datasheet for the sensitivity of the part used.
    // In this case, full scale range is 500 gauss, other sensitivities
    // are 1000 gauss and 2000 gauss.
    // Sensitivity of 500 gauss = 4.0 lsb/g
    // Sensitivity of 1000 gauss = 2.0 lsb/g
    // Sensitivity of 2000 gauss = 1.0 lsb/g

    data.mx = (float)data.x / 4.0;
    data.my = (float)data.y / 4.0;
    data.mz = (float)data.z / 4.0;

    // Convert the X, Y and Z values into radians
    data.rx = (float)data.x / 4096.0 * M_TWOPI;
    data.ry = (float)data.y / 4096.0 * M_TWOPI;
    data.rz = (float)data.z / 4096.0 * M_TWOPI;

    // Use a four quadrant Arc Tan to convert 2
    // axis to an angle (which is in radians) then
    // convert the angle from radians to degrees
    // for display.
    data.angleXY = atan2f(data.ry, data.rx) * 180.0 / M_PI;
    data.angleXZ = atan2f(data.rz, data.rx) * 180.0 / M_PI;
    data.angleYZ = atan2f(data.rz, data.ry) * 180.0 / M_PI;
  }
  else {
  }
}

SENSOR_DATA ALS31300::readFullLoop(int samples)
{
  uint32_t value0x27;

  // The data structure to return
  SENSOR_DATA data = {0};

  // Read the register the I2C loop mode is in
  uint16_t error = read(i2c_address, 0x27, value0x27);
  if (error != kNOERROR)
  {
    Serial.print("Unable to read the ALS31300. error = ");
    Serial.println(error);
  }

  // I2C loop mode is in bits 2 and 3 so mask them out
  // and set them to the full loop mode
  value0x27 = (value0x27 & 0xFFFFFFF3) | (0x2 << 2);

  // Write the new values to the register the I2C loop mode is in
  error = write(i2c_address, 0x27, value0x27);
  if (error != kNOERROR)
  {
    Serial.print("Unable to read the ALS31300. error = ");
    Serial.println(error);
  }

  // Write the address that is going to be read from the ALS31300
  Wire.beginTransmission(i2c_address);
  Wire.write(0x28);
  error = Wire.endTransmission(false);

  // The ALS31300 accepted the address
  if (error == kNOERROR)
  {


    long x_ave = 0;
    long y_ave = 0;
    long z_ave = 0;

    // Number times is arbitrary, there is no limit. What is being demonstrated
    // is that once the address is set to 0x28, the first four bytes read will be from 0x28
    // and the next four will be from 0x29 after that it starts all over at 0x28
    // until the register address is changed or the loop mode is changed.
    for (int count = 0; count < samples; ++count)
    {
      int x;
      int y;
      int z;
      // Start the read and request 8 bytes
      // which is the contents of register 0x28 and 0x29
      Wire.requestFrom(i2c_address, 8);

      // Read the first 4 bytes which are the contents of register 0x28
      x = Wire.read() << 4;
      y = Wire.read() << 4;
      z = Wire.read() << 4;
      Wire.read();    // Temperature and flags not used

      // Read the next 4 bytes which are the contents of register 0x29
      Wire.read();    // Upper byte not used
      x |= Wire.read() & 0x0F;
      byte d = Wire.read();
      y |= (d >> 4) & 0x0F;
      z |= d & 0x0F;
      Wire.read();    // Temperature not used

      // Sign extend the 12th bit for x, y and z.
      x = SignExtendBitfield((uint32_t)x, 12);
      y = SignExtendBitfield((uint32_t)y, 12);
      z = SignExtendBitfield((uint32_t)z, 12);

      x_ave += x;
      y_ave += y;
      z_ave += z;
    }


    x_ave /= samples;
    y_ave /= samples;
    z_ave /= samples;
    

    data.x = x_ave - cal_vals.x;
    data.y = y_ave - cal_vals.y;
    data.z = z_ave - cal_vals.z;

//    Serial.print(data.x);
//    Serial.print(", ");
//    Serial.print(data.y);
//    Serial.print(", ");
//    Serial.println(data.z);

    // Convert the X, Y and Z values into radians
    data.rx = (float)x_ave / 4096.0 * M_TWOPI;
    data.ry = (float)y_ave / 4096.0 * M_TWOPI;
    data.rz = (float)z_ave / 4096.0 * M_TWOPI;

    // Use a four quadrant Arc Tan to convert 2
    // axis to an angle (which is in radians) then
    // convert the angle from radians to degrees
    // for display.
    data.angleXY = atan2f(data.ry, data.rx) * 180.0 / M_PI;
    data.angleXZ = atan2f(data.rz, data.rx) * 180.0 / M_PI;
    data.angleYZ = atan2f(data.rz, data.ry) * 180.0 / M_PI;

//    Serial.print(data.angleXY);
//    Serial.print(", ");
//    Serial.print(data.angleXZ);
//    Serial.print(", ");
//    Serial.println(data.angleYZ);

  }
  else
  {
    Serial.print("Unable to read the ALS31300. error = ");
    Serial.println(error);
  }

  return data;
}

//
// read
//
// Using I2C, read 32 bits of data from the address on the device at the bus address
//
ALS_ERROR ALS31300::read(int busAddress, uint8_t address, uint32_t& value)
{
  // Write the address that is to be read to the device
  Wire.beginTransmission(busAddress);
  Wire.write(address);
  int error = Wire.endTransmission(false);

  // if the device accepted the address,
  // request 4 bytes from the device
  // and then read them, MSB first
  if (error == kNOERROR)
  {
    Wire.requestFrom(busAddress, 4);
    value = Wire.read() << 24;
    value += Wire.read() << 16;
    value += Wire.read() << 8;
    value += Wire.read();
  }

  return error;
}

//
// write
//
// Using I2C, write 32 bit data to an address to the device at the bus address
//
ALS_ERROR ALS31300::write(int busAddress, uint8_t address, uint32_t value)
{
  // Write the address that is to be written to the device
  // and then the 4 bytes of data, MSB first
  Wire.beginTransmission(busAddress);
  Wire.write(address);
  Wire.write((byte)(value >> 24));
  Wire.write((byte)(value >> 16));
  Wire.write((byte)(value >> 8));
  Wire.write((byte)(value));
  return Wire.endTransmission();
}

//
// SignExtendBitfield
//
// Sign extend a right justified value
//
long ALS31300::SignExtendBitfield(uint32_t data, int width)
{
  long x = (long)data;
  long mask = 1L << (width - 1);

  if (width < 32)
  {
    x = x & ((1 << width) - 1); // make sure the upper bits are zero
  }

  return (long)((x ^ mask) - mask);
}

void ALS31300::printData(SENSOR_DATA* data) {
  char out_msg[255];
  sprintf(out_msg, "x: %d y: %d z: %d\n",
          data->x, data->y, data->z);
  Serial.println(out_msg);
}
