#include "pic16f887_I2C.h"
#include <pic.h>

void I2C_init(int i2c_clock){
    SSPCON = 0x28;
    SSPADD = XTAL_FREQ / (4 * i2c_clock) -1;
    SSPSTAT = 0;    
}

void I2C_start(){
    while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));    
    SEN = 1;
}

void I2C_repeated_start(){
    while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    RSEN = 1;
}

void I2C_write(unsigned char data){
    while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    SSPBUF = data;
}

unsigned char I2C_read(char ack){
    while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    RCEN = 1;
    while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    unsigned char heure = SSPBUF; 
    while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    ACKDT = !ack; 
    ACKEN = 1;
    return heure;
}

void I2C_stop(){
    while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    PEN = 1;
}