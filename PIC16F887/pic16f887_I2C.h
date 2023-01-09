#ifndef PIC16F887_I2C_H
#define PIC16F887_I2C_H

#define XTAL_FREQ 11059200
#define ACK 0
void I2C_init(int clock);
void I2C_start();
void I2C_repeated_start();
void I2C_write(unsigned char data);
unsigned char I2C_read(char ack);
void I2C_stop();

#endif