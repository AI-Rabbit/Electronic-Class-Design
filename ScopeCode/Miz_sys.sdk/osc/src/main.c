#include "init.h"
#include "DELAY/delay.h"
#include "GUI/ui.h"
#include "GUI/osc_scope.h"

#include "xparameters.h"
#include "DMA/dma.h"
#include "osc.h"

volatile u8 tx_buffer_index;
volatile u8 rx_buffer_index;

int main(void)
{
	/*while(1)
	{
		int reg8 = OSC_mReadReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG8_OFFSET);
		int reg9 = OSC_mReadReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG9_OFFSET);
		int reg10 = OSC_mReadReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG10_OFFSET);
		int reg11 = OSC_mReadReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG11_OFFSET);
		xil_printf("%d %d %d %d \n\r", reg8, reg9, reg10, reg11);
		sleep_A9(1);
	}*/
	system_initialize();
	osc_scope_ui();
//	ADC_RxDone = 0;
	while(1){
		lv_task_handler();
		delay_ms(10);
		Xil_DCacheFlushRange((INTPTR)BufferPtr, 1024 * 600 * 4);

//		OSC_mWriteReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG0_OFFSET, 1);	// start
//		OSC_mWriteReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG0_OFFSET, 0);	// reset
//		u32 *ADC_RxBufferPtr=(u32 *)ADC_RX_BUFFER_BASE;
//		Status = XAxiDma_SimpleTransfer(&ADC_AxiDma,(u32)ADC_RxBufferPtr,
//				(u32)(MAX_PKT_LEN), XAXIDMA_DEVICE_TO_DMA);
//		if (Status != XST_SUCCESS) {xil_printf("fail!\r\n");}
//		while((XAxiDma_Busy(&ADC_AxiDma,XAXIDMA_DEVICE_TO_DMA)));
//		xil_printf("success!\r\n");

	}
	return XST_SUCCESS;
}

