
/*
 *
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
 * axi dma test
 *
*/

#include "dma_intr.h"
#include "sys_intr.h"
#include "OLED.h"

static XScuGic Intc; //GIC
static  XAxiDma AxiDma;

volatile u32 success;

char oled_str[16]="";

int Tries = NUMBER_OF_TRANSFERS;
int i;
int Index;
u8 *TxBufferPtr= (u8 *)TX_BUFFER_BASE;
u8 *RxBufferPtr=(u8 *)RX_BUFFER_BASE;
u8 Value;

int axi_dma_test()
{
	int Status;
	TxDone = 0;
	RxDone = 0;
	Error = 0;

	xil_printf("\r\n----DMA Test----\r\n");
	print_message( "----DMA Test----",0);//oled print

	xil_printf("PKT_LEN=%d\r\n",MAX_PKT_LEN);

	sprintf(oled_str,"PKT_LEN=%d",MAX_PKT_LEN);
	print_message(oled_str,1);//oled print

	//while(1)
	for(i = 0; i < Tries; i ++)
	{
		Value = TEST_START_VALUE + (i & 0xFF);
		for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
				TxBufferPtr[Index] = Value;

				Value = (Value + 1) & 0xFF;
		}

		/* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
		 * is enabled
		 */
		Xil_DCacheFlushRange((u32)TxBufferPtr, MAX_PKT_LEN);

		Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) RxBufferPtr,
					MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) TxBufferPtr,
					MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Wait TX done and RX done
		 */
		while (!TxDone || !RxDone) {
				/* NOP */
		}

		success++;
		TxDone = 0;
		RxDone = 0;

		if (Error) {
			xil_printf("Failed test transmit%s done, "
			"receive%s done\r\n", TxDone? "":" not",
							RxDone? "":" not");
			goto Done;
		}
		/*
		 * Test finished, check data
		 */
		Status = DMA_CheckData(MAX_PKT_LEN, (TEST_START_VALUE + (i & 0xFF)));
		if (Status != XST_SUCCESS) {
			xil_printf("Data check failed\r\n");
			goto Done;
		}

	}
	xil_printf("AXI DMA interrupt example test passed\r\n");
	xil_printf("success=%d\r\n",success);
	sprintf(oled_str,"success=%d",success);
	print_message(oled_str,2);
	/* Disable TX and RX Ring interrupts and return success */
	DMA_DisableIntrSystem(&Intc, TX_INTR_ID, RX_INTR_ID);
Done:
	xil_printf("--- Exiting Test --- \r\n");
	print_message("--Exiting Test---",3);
	return XST_SUCCESS;

}

int init_intr_sys(void)
{
	DMA_Intr_Init(&AxiDma,0);//initial interrupt system
	Init_Intr_System(&Intc); // initial DMA interrupt system
	Setup_Intr_Exception(&Intc);
	DMA_Setup_Intr_System(&Intc,&AxiDma,TX_INTR_ID,RX_INTR_ID);//setup dma interrpt system
	DMA_Intr_Enable(&Intc,&AxiDma);
}

int main(void)
{

	init_intr_sys();
	oled_fresh_en();// enable oled
	axi_dma_test();

}


