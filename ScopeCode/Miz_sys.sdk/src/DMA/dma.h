#ifndef DMA_H
#define DMA_H
#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xscugic.h"

#define DMA_MEM_BASE_ADDR		0x10000000

#define ADC_DMA_DEV_ID		XPAR_AXI_DMA_0_DEVICE_ID
#define ADC_RX_BUFFER_BASE		(DMA_MEM_BASE_ADDR + 0x00300000)
#define ADC_RX_BUFFER_HIGH		(DMA_MEM_BASE_ADDR + 0x004FFFFF)

/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000
/* test start value
 */
#define TEST_START_VALUE	0xC

#define MAX_PKT_LEN		1000// Sample 100 points,must 400!

#define NUMBER_OF_TRANSFERS	100000

extern volatile int ADC_RxDone;
extern volatile int Error;

XAxiDma ADC_AxiDma;

int  DMA_Setup_Intr_System(XScuGic * IntcInstancePtr,XAxiDma * AxiDmaPtr, u16 RxIntrId);
int  DMA_Intr_Enable(XScuGic * IntcInstancePtr,XAxiDma *DMAPtr);
int  DMA_Intr_Init(XAxiDma *DMAPtr,u32 DeviceId);

#endif
