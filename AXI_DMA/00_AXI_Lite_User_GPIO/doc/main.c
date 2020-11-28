/*
 * main.c
 *
 *  Created on: 2016Äê11ÔÂ8ÈÕ
 *      Author: Administrator
 */
#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xil_types.h"

#define XGpio_axi_WriteReg(BaseAddr, RegOffset, Data)	\
		Xil_Out32((BaseAddr) + (u32)(RegOffset), (u32)(Data))
#define XPAR_GPIO_LITE_ML_0 XPAR_GPIO_LITE_ML_0_BASEADDR
#define GPIO_LITE_ML_REG0 0

int main()
{
	u8 i=0;
	XGpio_axi_WriteReg(XPAR_GPIO_LITE_ML_0,GPIO_LITE_ML_REG0,0X00);
	while(1)
	{
		for(i=0;i<=3;i++)
		{
		XGpio_axi_WriteReg(XPAR_GPIO_LITE_ML_0,GPIO_LITE_ML_REG0,1<<i);
		usleep(500000);
		}
		i=0;
	}

}
