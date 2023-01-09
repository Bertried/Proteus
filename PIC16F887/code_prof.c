// ------------------ Configuration de l'afficheur LCD ---------------------- //
#include <htc.h>
#include <pic.h>
#include "lcd.h"

__CONFIG(FOSC_HS& WDTE_OFF& PWRTE_OFF& MCLRE_ON& CP_OFF& LVP_OFF);

// ---------------------- Déclaration des variables ------------------------- //
char s1, s2, pt, m1, m2, h1, h2, j, i, ii, jj;    // variables à 8 bits (1 octet)
bit  md;                                // variables à 1 bits (0 ou 1)

// -------------------- sous programme pour l'affichage --------------------- //
void affichage()                  // Affichage principal
{
    lcd_set_cursor(1, 1);
    lcd_write_string("Cour des Lions !");   // Affichage Nom du site
    lcd_set_cursor(2, 10);
    lcd_write_character(pt);
    lcd_set_cursor(2, 7);                 // Affichage du séparateur deux-points (:)
    lcd_write_character(pt);
    lcd_set_cursor(2, 12);                  // Affichage du séparateur deux-points (:)
    lcd_write_character(s1);
    lcd_set_cursor(2, 11);
    lcd_write_character(s2);// Affichage des secondes
    lcd_set_cursor(2, 9);
    lcd_write_character(m1);
    lcd_set_cursor(2, 8);
    lcd_write_character(m2);  // Affichage des minutes
    lcd_set_cursor(2, 6);
    lcd_write_character(h1);
    lcd_set_cursor(2, 5);
    lcd_write_character(h2);  // Affichage des heures
}
void affichage_mode()              // Affichage Jour/Nuit
{   lcd_set_cursor(2,15);
    if (md == 0) lcd_write_string( "AM");      // Si mode=0 (jour) afficher AM
    if (md == 1) lcd_write_string("PM");      // Si mode=1 (nuit) afficher PM
}

void affichage_jour()              // Affichage des jours de la semaine
{    lcd_set_cursor(2,1);
    if (j == 1) lcd_write_string( "LUN");       // Si j=1 afficher Lundi
    if (j == 2) lcd_write_string( "MAR");       // Si j=2 afficher Mardi
    if (j == 3) lcd_write_string( "MER");       // Si j=3 afficher Mercredi
    if (j == 4) lcd_write_string( "JEU");       // Si j=4 afficher Jeudi
    if (j == 5) lcd_write_string( "VEN");       // Si j=5 afficher Vendredi
    if (j == 6) lcd_write_string( "SAM");       // Si j=6 afficher Samedi
    if (j == 7) lcd_write_string( "DIM");       // Si j=7 afficher Dimenche
    if (j == 8) j = 1;                                 // Si j=8 => RAZ des jours
}

// ------------------------- Programme Principal ---------------------------- //
void main() {
    // ----- Configuration et initialisation des ports A,B et C ----- //
    TRISC = 0b11111100; TRISA = 0b000000; TRISB = 0b10000001;
    PORTA = 0b00000000; PORTB = 0b01000000;
    TRISD = 0xF0;

    // ----- Initialisation des variables ----- //
    s1 = s2 = m1 = m2 = h1 = h2 = 48;              // 48 est le code ASCII de 0
    pt = 58;                             // 58 est le code ASCII des deux-points (:)
    j = 1;                               // j est un compteur des jours
    md = 0;                              // md => mode jour (AM) ou mode nuit (PM)
    i = 1;                               // i compteur pour répéter l2h (2 fois/jour)
    ii = 0b00000001;                     // ii est affecté au PORTA
    jj = 0b00000010;                     // jj est affecté au PORTB

    // ----- Initialisation de l'affichage ----- //
    lcd_init();                        // Initialisation de l'afficheur LCD
    // lcd_cmd(_lcd_cursor_off);          // Masquer le curseur
    affichage();                       // Appel du sous programme de l'affichage
    lcd_write_string( "LUN");                // Affichage des jours (à partir Lundi)
    lcd_set_cursor(2,15);
    lcd_write_string("AM");                // Affichage jour / Nuit (AM ou PM)

    // ----- Boucle principale ----- //
    for (;;) {
        if (PORTC.B0 == 1)                   // Si le niveau de l'eau est > niveau bas
        {
            delay_ms(1000);                    // Temporisation 1000 ms (une seconde)
            s1++;                              // Incrémenter s1 par 1
            if (s1 == 58) {
                s1 = 48;                 // Si s1=10 (58 en code ASCII) => RAZ s1
                s2++;
            }                 // et incrémenter s2
            if (s2 == 54) {
                s1 = s2 = 48;              // Si s2=6 (54 en code ASCII) => RAZ s1 s2
                m1++;
            }                 // et incrémenter m1
            if (m1 == 58) {
                s1 = s2 = m1 = 48;           // Si m1=10 => RAZ s1 s2 m1
                m2++;
            }                 // et incrémenter m2
            if (m2 == 54) {
                s1 = s2 = m1 = m2 = 48;        // Si m2=6  => RAZ s1 s2 m1 m2
                h1++;                  // et incrémenter h1 et décaler les PORTS
                {
                    if (ii == 0b01000000) {
                        PORTA = 0b00000000;
                        PORTB = jj;
                        jj = jj << 1; if (jj == 0b00000000) ii = 0b00000001;
                    }
                    else {
                        PORTB = 0b00000000;
                        PORTA = ii;
                        ii = ii << 1; jj = 0b00000010;
                    }
                }
            }

            if (h1 == 58) {
                s1 = s2 = m1 = m2 = h1 = 48;           // Si h1=10 => RAZ s1 s2 m1 m2 h1
                h2++;
            }                       // et incrémenter h2
            if (h2 == 49 && h1 == 51) {
                s1 = s2 = m1 = m2 = h2 = 48;   // Si h2=1 et h1=3 => RAZ s1 s2 m1 m2 h2
                h1 = 49; md = ~md;                 // Basculement PM <=> AM
                i++;                          // et incrémenter i
                {
                    if (ii == 0b01000000) {
                        PORTA = 0b00000000;
                        PORTB = jj;
                        jj = jj << 1; if (jj == 0b00000000) ii = 0b00000001;
                    }
                    else {
                        PORTB = 0b00000000;
                        PORTA = ii;
                        ii = ii << 1; jj = 0b00000010;
                    }
                }
            }
            if (i == 3) { i = 1; j++; }             // Si 12h passées 2fois/jour => jour suivant

            // ----- affichage après incrémentation ----- //
            affichage(); affichage_mode(); affichage_jour();

            // ----- Prg de réglage des minutes -------- //
            if (PORTC.B3 == 1) {
                m1++;
                if (m1 == 58) { m1 = 48;m2++; }
                if (m2 == 54) {
                    m1 = m2 = 48;
                    h1++;
                    {
                        if (ii == 0b01000000) {
                            PORTA = 0b00000000;
                            PORTB = jj;
                            jj = jj << 1; if (jj == 0b00000000) ii = 0b00000001;
                        }
                        else {
                            PORTB = 0b00000000;
                            PORTA = ii;
                            ii = ii << 1; jj = 0b00000010;
                        }
                    }
                }
                affichage(); delay_ms(500);
            }

            // -------- Prg de réglage des heures ---------- //
            if (PORTC.B4 == 1) {
                h1++;
                {
                    if (ii == 0b01000000) {
                        PORTA = 0b00000000;
                        PORTB = jj;
                        jj = jj << 1; if (jj == 0b00000000) ii = 0b00000001;
                    }
                    else {
                        PORTC = 0b00000000;
                        PORTA = ii;
                        ii = ii << 1; jj = 0b00000010;
                    }
                }
                if (h1 == 58) { h1 = 48; h2++; }
                if (h2 == 49 && h1 == 51) {
                    h1 = 49; h2 = 48; md = ~md; i++;
                    {
                        if (ii == 0b01000000) {
                            PORTA = 0b00000000;
                            PORTC = jj;
                            jj = jj << 1; if (jj == 0b00000000) ii = 0b00000001;
                        }
                        else {
                            PORTC = 0b00000000;
                            PORTA = ii;
                            ii = ii << 1; jj = 0b00000010;
                        }
                    }
                }
                if (i == 3) { i = 1; j++; }
                affichage(); affichage_mode(); delay_ms(500);
            }

            // --------- Prg de réglage des jours ------------- //
            if (PORTC.B5 == 1) { j++;  affichage_jour(); delay_ms(500); }

        }

        // ------- Prg test de niveau de l'eau ------------- //
        else                                  // le niveau de l'eau est < niveau bas
        {
            PORTA = 0x00;
            PORTC = 0x00;
            lcd_clear();
            lcd_set_cursor(1,1);
            lcd_write_string("ATTENTION SVP ! ");    // Warning
            delay_ms(1000);
            lcd_write_string( "NIVEAU D'EAU << ");
            delay_ms(1000);
            lcd_clear();
        }
    }
}

/*   ********************   Fin du programme ^_^  ************************    */
