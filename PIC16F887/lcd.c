#include "lcd.h"
#include <pic.h>

void delay_ms(unsigned int tick){
	while(tick--)__delay_ms(1);
}

void lcd_pin(unsigned char c){
    D4 = c & 1 ? 1 : 0;
    D5 = c & 2 ? 1 : 0;
    D6 = c & 4 ? 1 : 0;
    D7 = c & 8 ? 1 : 0;
}

void lcd_cmd(unsigned char c){
    RS = 0;
    lcd_pin(c);
    EN = 1;
    delay_ms(4);
    EN = 0;
}

void lcd_clear(){
    lcd_cmd(0);
	lcd_cmd(1);
}

void lcd_set_cursor(unsigned char a,unsigned char b){
    unsigned char row, upper, lower;
    if (a == 1)row = 0x80 + b;
    else if (a == 2)row = 0xC0 + b;
    else return;
    upper = row >> 4;
    lower = row & 0x0F;
    lcd_cmd(upper);
    lcd_cmd(lower);
}

void lcd_init() {
    lcd_pin(0x00);
    __delay_ms(20);
    lcd_cmd(0x03);
    __delay_ms(5);
    lcd_cmd(0x03);
    __delay_ms(11);
    lcd_cmd(0x03);
    /////////////////////////////////////////////////////
    lcd_cmd(0x02);
    lcd_cmd(0x02);
    lcd_cmd(0x08);
    lcd_cmd(0x00);
    lcd_cmd(0x0C);
    lcd_cmd(0x00);
    lcd_cmd(0x06);
}

void lcd_write_character(unsigned char c){
    unsigned char lower,upper;
    lower = c & 0x0F;
    upper = c >> 4;
    RS = 1;
    lcd_pin(upper);
    EN = 1;
    delay_ms(5);
    EN = 0;
    lcd_pin(lower);
    EN = 1;
    delay_ms(5);
	EN = 0;
}

void lcd_write_string(const char* s){
    int i=0;
    while(s[i])lcd_write_character(s[i++]);
}

void lcd_shift_right()
{
	lcd_cmd(0x01);
	lcd_cmd(0x0C);
}

void lcd_shift_left()
{
	lcd_cmd(0x01);
	lcd_cmd(0x08);
}

