#ifndef _I2C_H
#define _I2C_H   

#if (__GNUC__ * 100 + __GNUC_MINOR__) < 304
// #error "This library requires AVR-GCC 3.4 or later, update to newer AVR-GCC compiler !"
#endif

#ifndef __AVR_ATmega8535__
#define __AVR_ATmega8535__
#endif

#include <avr/io.h>

/** defines the data direction (reading from I2C device) in I2C_start(),I2C_rep_start() */
#define I2C_READ    1

/** defines the data direction (writing to I2C device) in I2C_start(),I2C_rep_start() */
#define I2C_WRITE   0
#define SECONDS_REGISTER 0x00
#define MINUTES_REGISTER 0x01
#define HOURS_REGISTER 0x02
#define DAYS_REGISTER 0x03
#define DATES_REGISTER 0x04
#define MONTHS_REGISTER 0x05
#define YEARS_REGISTER 0x06

#define DS1307 0xD0 // I2C bus address of DS1307 RTC

#define TW_START (1<<TWINT) | (1<<TWSTA) | (1<<TWEN)  // send start condition (TWINT,TWSTA,TWEN)0xA4
#define TW_READY (TWCR & (1<<TWINT)) // ready when TWINT returns to logic 1.
#define TW_STATUS (TWSR & 0xF8) // returns value of status register
#define TW_SEND (1<<TWINT) | (1<<TWEN) // send data (TWINT,TWEN)0x84
/**
 @brief initialize the I2C master interace. Need to be called only once
 @param  void
 @return none
 */
extern void I2C_init(void);


/**
 @brief Terminates the data transfer and releases the I2C bus
 @param void
 @return none
 */
extern void I2C_stop(void);


/**
 @brief Issues a start condition and sends address and transfer direction

 @param    addr address and transfer direction of I2C device
 @retval   0   device accessible
 @retval   1   failed to access device
 */
extern unsigned char I2C_start();
extern unsigned char I2C_SendAddr(unsigned char addr);

/**
 @brief Issues a start condition and sends address and transfer direction

 If device is busy, use ack polling to wait until device ready
 @param    addr address and transfer direction of I2C device
 @return   none
 */
extern void I2C_start_wait(unsigned char addr);


/**
 @brief Send one byte to I2C device
 @param    data  byte to be transfered
 @retval   0 write successful
 @retval   1 write failed
 */
extern unsigned char I2C_write(unsigned char data);


/**
 @brief    read one byte from the I2C device, request more data from device
 @return   byte read from I2C device
 */
extern unsigned char I2C_readAck(void);

/**
 @brief    read one byte from the I2C device, read is followed by a stop condition
 @return   byte read from I2C device
 */
extern unsigned char I2C_readNak(void);

/**
 @brief    read one byte from the I2C device

 Implemented as a macro, which calls either I2C_readAck or I2C_readNak

 @param    ack 1 send ack, request more data from device<br>
               0 send nak, read is followed by a stop condition
 @return   byte read from I2C device
 */
extern unsigned char I2C_read(unsigned char ack);
#define I2C_read(ack)  (ack) ? I2C_readAck() : I2C_readNak() 

extern void I2C_WriteRegister(unsigned char deviceRegister, unsigned char data);
extern unsigned char I2C_ReadRegister(unsigned char deviceRegister);
extern unsigned char I2C_FindDevice(unsigned char start);
extern unsigned char I2C_Detect(unsigned char addr);


/**@}*/
#endif