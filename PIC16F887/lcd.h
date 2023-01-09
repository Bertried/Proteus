#ifndef _LCD_H
#define _LCD_H

//----Définition des broches de l'afficheur LCD--- //
#define RS RD0
#define EN RD1
#define D4 RD2
#define D5 RD3
#define D6 RD4
#define D7 RD5

void delay_ms(unsigned int tick);
void lcd_pin(char c);                   //Fonction pour changer l'éat des broches de l'afficheur LCD
void lcd_cmd(char c);                   //Fonction pour l'envoi d'une commande
void lcd_clear();                       //Fonction pour effacer l'affichage de l'écran
void lcd_set_cursor(char a,char b);     //Fonction pour placer le curseur
void lcd_init();                        //Fonction d'initialisation de l'afficheur LCD
void lcd_write_character(char c);       //Fonction pour écrire un caractère
void lcd_write_string(const char* s);   //Fonction pour écrire une chaine de caractère
void lcd_shift_right();                 //Fonction pour pousser l'affichage à droite
void lcd_shift_left();                  //Fonction pour pousser l'affichage à gauche
#endif

