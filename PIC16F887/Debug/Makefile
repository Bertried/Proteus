###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = PIC16F887
COMPILER = "HI-TECH C for PIC10/12/16"
TARGET = Debug
SHELL = C:\Windows\system32\cmd.exe

## Tools general options
CCFLAGS=--pass1 --errformat="Error at file %%f line %%l column %%c: (%%n) %%s" --warnformat="Warning at file %%f line %%l column %%c: (%%n) %%s" --msgformat="Message at file %%f line %%l column %%c: (%%n) %%s" -D_XTAL_FREQ=1000000 -G --chip=16F887
LDFLAGS=--output=mcof --errformat="Error at file %%f line %%l column %%c: (%%n) %%s" --warnformat="Warning at file %%f line %%l column %%c: (%%n) %%s" --msgformat="Message at file %%f line %%l column %%c: (%%n) %%s" -G --chip=16F887

## Processing Tools
CC=picc.exe
ASM=picc.exe
LD=picc.exe
LIB=picc.exe
#  C:/Users/Bertried/Documents/Proteus/PIC16F887/Debug/Debug.cof: TOOL=LD
#  Post: rm startup.as
#  Post: rm Debug.as
#     C:/Users/Bertried/Documents/Proteus/PIC16F887/Debug/main.p1: TOOL=CC
#        C:/Users/Bertried/Documents/Proteus/PIC16F887/main.c
#     C:/Users/Bertried/Documents/Proteus/PIC16F887/Debug/lcd.p1: TOOL=CC
#        C:/Users/Bertried/Documents/Proteus/PIC16F887/lcd.c
#     C:/Users/Bertried/Documents/Proteus/PIC16F887/Debug/pic16f887_I2C.p1: TOOL=CC
#        C:/Users/Bertried/Documents/Proteus/PIC16F887/pic16f887_I2C.c

# Build tree:
all:	Debug

Debug:	Debug.cof

Debug.cof:	main.p1 lcd.p1 pic16f887_I2C.p1 
	$(LD) $(LDFLAGS)  -O"Debug.cof" "main.p1" "lcd.p1" "pic16f887_I2C.p1"
	rm startup.as
	rm Debug.as

main.p1:	../main.c 
	$(CC) $(CCFLAGS)  -O"main.p1" "../main.c"

lcd.p1:	../lcd.c 
	$(CC) $(CCFLAGS)  -O"lcd.p1" "../lcd.c"

pic16f887_I2C.p1:	../pic16f887_I2C.c 
	$(CC) $(CCFLAGS)  -O"pic16f887_I2C.p1" "../pic16f887_I2C.c"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf ./Debug.hxl
	rm -rf ./Debug.lst
	rm -rf ./Debug.sym
	rm -rf ./Debug.obj
	rm -rf ./Debug.sdb
	rm -rf ./Debug.as
	rm -rf ./startup.obj
	rm -rf ./startup.rlf
	rm -rf ./startup.as
	rm -rf ./startup.lst
	rm -rf ./funclist.
	rm -rf ./Debug.hex
	rm -rf ./main.pre
	rm -rf ./main.lst
	rm -rf ./lcd.pre
	rm -rf ./lcd.lst
	rm -rf ./pic16f887_I2C.pre
	rm -rf ./pic16f887_I2C.lst

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.cof
	rm -rf main.p1
	rm -rf lcd.p1
	rm -rf pic16f887_I2C.p1
