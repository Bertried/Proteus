#include<htc.h>

#define RS RC5
#define EN RC1
#define D4 RD4
#define D5 RD5
#define D6 RD6
#define D7 RD7


#define _XTAL_FREQ 20000000
#include "lcd.h"



void main()
{
 int i;
  TRISB = 0x00;
  Lcd4_Init();
  while(1)
  {
    Lcd4_Set_Cursor(1,1);
    Lcd4_Write_String("electroSome LCD Hello World");
    for(i=0;i<15;i++)
    {
      __delay_ms(1000);
      Lcd4_Shift_Left();
    }
    for(i=0;i<15;i++)
    {
      __delay_ms(1000);
      Lcd4_Shift_Right();
    }
    Lcd4_Clear();
    Lcd4_Set_Cursor(2,1);
    Lcd4_Write_Char('e');
    Lcd4_Write_Char('S');
    __delay_ms(2000);
  }
}
