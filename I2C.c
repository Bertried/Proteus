#include <inttypes.h>

#include "I2C.h"

/* define CPU frequency in Mhz here if not defined in Makefile */
#ifndef F_CPU
#define F_CPU 8000000 //8MHz
#endif

/* I2C clock in Hz */
#define SCL_CLOCK  100000L //100kHz


/*************************************************************************
 Initialization of the I2C bus interface. Need to be called only once
*************************************************************************/
void I2C_init(void) {
	/* initialize TWI clock: 100 kHz clock, TWPS = 0 => prescaler = 1 */

	TWSR = 0;                         /* no prescaler */
	TWBR = ((F_CPU / SCL_CLOCK) - 16) / 2;  /* must be > 10 for stable operation */

}/* I2C_init */

unsigned char I2C_Detect(unsigned char addr)
// look for device at specified address; return 1=found, 0=not found
{
	TWCR = TW_START; // send start condition
	while (!TW_READY); // wait
	TWDR = addr; // load device's bus address
	TWCR = TW_SEND; // and send it
	while (!TW_READY); // wait
	return (TW_STATUS == 0x18); // return 1 if found; 0 otherwise
}

unsigned char I2C_FindDevice(unsigned char start)
// returns with address of first device found; 0=not found
{
	for (unsigned char addr = start;addr < 0xFF;addr++) // search all 256 addresses
	{
		if (I2C_Detect(addr)) // I2C detected?
			return addr; // leave as soon as one is found
	}
	return 0; // none detected, so return 0.
}



/*************************************************************************
  Issues a start condition and sends address and transfer direction.
  return 0 = device accessible, 1= failed to access device
*************************************************************************/
unsigned char I2C_start()
// generate a TW start condition
{
	TWCR = TW_START; // send start condition
	while (!TW_READY); // wait
	return (TW_STATUS == 0x08); // return 1 if found; 0 otherwise
}
/* I2C_start */

unsigned char I2C_SendAddr(addr)
// send bus address of slave
{
	TWDR = addr; // load device's bus address
	TWCR = TW_SEND; // and send it
	while (!TW_READY); // wait
	return (TW_STATUS == 0x18); // return 1 if found; 0 otherwise
}



/*************************************************************************
 Terminates the data transfer and releases the I2C bus
*************************************************************************/
void I2C_stop(void) {
	/* send stop condition */
	TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWSTO);

	// wait until stop condition is executed and bus released
	while (TWCR & (1 << TWSTO));

}/* I2C_stop */


/*************************************************************************
  Send one unsigned char to I2C device

  Input:    unsigned char to be transfered
  Return:   0 write successful
			1 write failed
*************************************************************************/
unsigned char I2C_write(unsigned char data) // sends a data unsigned char to slave
{
	TWDR = data; // load data to be sent
	TWCR = TW_SEND; // and send it
	while (!TW_READY); // wait
	return (TW_STATUS != 0x28); // return 1 if found; 0 otherwise
}
/* I2C_write */


/*************************************************************************
 Read one unsigned char from the I2C device, request more data from device

 Return:  unsigned char read from I2C device
*************************************************************************/
unsigned char I2C_readAck(void) {
	TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWEA);
	while (!TW_READY);
	return TWDR;
}/* I2C_readAck */


/*************************************************************************
 Read one unsigned char from the I2C device, read is followed by a stop condition

 Return:  unsigned char read from I2C device
*************************************************************************/
unsigned char I2C_readNak(void) {
	TWCR = (1 << TWINT) | (1 << TWEN);
	while (!TW_READY);
	return TWDR;
}/* I2C_readNak */

void I2C_WriteRegister(unsigned char deviceRegister, unsigned char data) {
	I2C_start();
	I2C_SendAddr(DS1307); // send bus address
	I2C_write(deviceRegister); // first unsigned char = device register address
	I2C_write(data); // second unsigned char = data for device register
	I2C_stop();
}

unsigned char I2C_ReadRegister(unsigned char deviceRegister) {
	unsigned char data = 0;
	I2C_start();
	I2C_SendAddr(DS1307); // send device bus address
	I2C_Write(deviceRegister); // set register pointer
	I2C_start();
	I2C_SendAddr(DS1307 + I2C_READ); // restart as a read operation
	data = I2C_read(0); // read the register data
	I2C_stop(); // stop
	return data;
}
