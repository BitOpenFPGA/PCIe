/*
 * main.c
 *
 *  Created on: 2016年11月8日
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


#define MATH_IP_BASE XPAR_MATH_IP_0_BASEADDR
#define MATH_REG0 0
#define MATH_REG1 4
#define MATH_REG2 0

int main()
{
	u8 i=0;
	u8 val=0;
	Xil_Out32(MATH_IP_BASE+MATH_REG0,0X42);
	Xil_Out32(MATH_IP_BASE+MATH_REG1,0X12);
	val = Xil_In32(MATH_IP_BASE+MATH_REG2);
	xil_printf("val=%x",val);

	XGpio_axi_WriteReg(XPAR_GPIO_LITE_ML_0,GPIO_LITE_ML_REG0,0X00);
	while(1)
	{
		for(i=0;i<=3;i++)
		{
		XGpio_axi_WriteReg(XPAR_GPIO_LITE_ML_0,GPIO_LITE_ML_REG0,1<<i);
		//修改vio ：probe_out0设置为1,probe_out1,probe_out2任意设置，观察输出
		//val = Xil_In32(MATH_IP_BASE+MATH_REG2);
		//xil_printf("val=%x",val);
		usleep(500000);
		}
		i=0;
	}

}
