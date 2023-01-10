char i = 0;
unsigned int ms=0;	// Keep Counter every 1 ms 
unsigned long sec=0;	// Keep Counter every 1 sec

void affichage(char c){
    lcd_set_cursor(1,1);
    lcd_write_string(":");
    lcd_write_string(":");
    
    
    lcd_set_cursor(2,1);
    lcd_write_string("Lion ");
    if(c < 10)lcd_write_character(c + 49);
    else {
        lcd_write_character((c+1) / 10 + 48);
        lcd_write_character((c+1) % 10 + 48);
    }
}

void interrupt Timer0(){
    if(T0IF == 1){
        T0IF = 0;
        TMR0 = 200;
        ms++;
        if(ms >= 71){
        i++;
        i %= 12;
            ms = 0;
            switch(i){
                case 1:
                    lcd_clear();
                    PORTB = 0;
                    RA0 = 1;
                    break;
                case 7:
                    PORTA = 0;
                    RB0 = 1;
                    break;
                default:
                    if(PORTA)PORTA <<= 1 ;
                    else PORTB <<= 1;
                    break;
            }
            affichage(i);
        }
        //delay_ms(500);
    }
}


void affiche_heure(){
    time_t now;
    time(&now);
    struct tm *local = localtime(&now);
    int t[3]={};
    t[0] = local->tm_hour;        
    t[1] = local->tm_min;       
    t[2] = local->tm_sec;   
    int x;
    for(x=0;x<3;++x){
        lcd_write_character(s[x] / 10 + 48);
        lcd_write_character(s[x] % 10 + 48);
        if(x!=2)lcd_write_character(':');
    }
}


void main(){
    ANSEL = 0; //disable analog input on PORTA
    ANSELH = 0;//disable analog input on PORTB
    TRISA = 0;
    TRISB = 0xC0;
    TRISC = 0xFC;
    TRISD = 0xF0;
    PORTA = 0;
    PORTB = 0;
    PS0 = 1;
    PS1 = 1;
    PS2 = 1;
    PSA = 0;
    TMR0 = 200;
    T0IE = 1;
    GIE = 1;
    T0CS = 0;
    T0IF = 0;
    lcd_init();
    while(1){
        delay_ms(1000);
    }
}