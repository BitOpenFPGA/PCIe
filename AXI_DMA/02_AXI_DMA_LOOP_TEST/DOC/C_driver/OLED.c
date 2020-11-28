
#include "xparameters.h"
#include "xil_io.h"
#include <string.h>
#define DELAY 10000

/* 	Define the base memory address of the ZedboardOLED IP core */
#define OLED_BASE XPAR_SSD1306_OLED_ML_0_BASEADDR

/*  driver functions for ZedboardOLED IP core */
/*****************************************************************************/
/**
*
* prints a character on the OLED at the page and the position specified by the second
* and third arguments,example print_char('A',0,0);
*
* @param	char char_seq , the character to be printed.
*
* @param	unsigned int page(0-3) , the OLED is divided into 4 pages numbers, 0 is the upper
*			3 is the lower.
* @param	unsigned int position(0-15) , each page can hold 16 characters
* 			0 is the leftmost , 15 is the rightmost
*
* @return	int , 1 on success , 0 on failure.

******************************************************************************/
int print_char( char char_seq, unsigned int page ,unsigned int position);

/*****************************************************************************/
/**
*
* prints a string of characters on the OLED at the page specified by the second
* argument, maximum string per page =16,example: print_char("Texas A&M Qatar,0);
*
* @param	char *start , the string message to be printed , maximum 16 letters.
*
* @param	unsigned int page(0-3) , the OLED is divided into 4 pages numbers, 0 is the upper
*			3 is the lower.
*
* @return	int , 1 on success , 0 on failure.
*
******************************************************************************/
int print_message(char *start , unsigned int page);

/*****************************************************************************/
/**
*
* clears the screen, example: clean();
*
*
* @param	none.
*
* @return	none.
******************************************************************************/

void oled_fresh_en()
{
	Xil_Out32(OLED_BASE+64, 1);
}


int print_message(char  *start , unsigned int page) {
unsigned int ln,i;
char *char_pointer;

	u32 val=0;
	val|=start[0];
	val|=start[1]<<8;
	val|=start[2]<<16;
	val|=start[3]<<24;
	Xil_Out32(OLED_BASE+0+16*page,val);

    val=0;
	val|=start[4];
	val|=start[5]<<8;
	val|=start[6]<<16;
	val|=start[7]<<24;
	Xil_Out32(OLED_BASE+4+16*page,val);

    val=0;
	val|=start[8];
	val|=start[9]<<8;
	val|=start[10]<<16;
	val|=start[11]<<24;
	Xil_Out32(OLED_BASE+8+16*page,val);

    val=0;
	val|=start[12];
	val|=start[13]<<8;
	val|=start[14]<<16;
	val|=start[15]<<24;
	Xil_Out32(OLED_BASE+12+16*page,val);

	return (1);
}
