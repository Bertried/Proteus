#define F_CPU 1000000UL  //1MHz
#include "I2C.h"
#include <util/delay.h>
#include <math.h>

void DS1307_GetTime(unsigned char* hours, unsigned char* minutes, unsigned char* seconds)
// renvoie des heures, des minutes et des secondes au format BCD
{
    *hours = I2C_ReadRegister(HOURS_REGISTER);
    *minutes = I2C_ReadRegister(MINUTES_REGISTER);
    *seconds = I2C_ReadRegister(SECONDS_REGISTER);
    if (*hours & 0x40) // mode 12hr:
        *hours &= 0x1F; // utiliser les 5 bits inférieurs (pm bit = temp & 0x20)
    else *hours &= 0x3F; // mode 24hr: utiliser les 6 bits inférieurs
}

void show_time() {
    // Afficher l'heure
    unsigned char hours, mins, secs;
    DS1307_GetTime(&hours, &mins, &secs);
    PORTA = secs; //le code BCD des secondes dans le PORTA
    PORTB = mins; //le code BCD des minutes dans le PORTB
    PORTD = hours;//le code BCD des heures dans le PORTD
}


int BCD_to_Decimal(unsigned char x) {
    return x - 6 * (x >> 4);
}

int main() {
    DDRA |= 0xFF; //Activer toutes les sorties du PORTA
    DDRB |= 0xFF; //Activer toutes les sorties du PORTB
    DDRD |= 0xFF; //Activer toutes les sorties du PORTD
    DDRC |= 0x0F << DDC2; //Activer les sorties 2 à 5 du PORTC et le reste sont des entrées
    int i = 1, led = BCD_to_Decimal(PORTA);//Compteur de secondes(LEDs)

    while (1) {
        for (;i < led + 1;++i) {
            /*Démultiplexage de l'horloge dans les compteurs Johnsons à l'aide des sorties 3 à 5 du PORTC pour l'adressage*/
            if (i < 9)PORTC = 1 << PC2;
            else if (i >= 9 && i < 17)PORTC = 0x03 << PC2;
            else if (i >= 17 && i < 25)PORTC = 0x05 << PC2;
            else if (i >= 25 && i < 33)PORTC = 0x07 << PC2;
            else if (i >= 33 && i < 41)PORTC = 0x09 << PC2;
            else if (i >= 41 && i < 49)PORTC = 0x0B << PC2;
            else if (i >= 49 && i < 57)PORTC = 0x0D << PC2;
            else if (i >= 57 && i < 62)PORTC = 0x0F << PC2;
            _delay_ms(100);
            PORTC &= ~(1 << PC2);
        }
        show_time();
        PORTC &= ~(1 << PC2);
    }
    return 0;
}

