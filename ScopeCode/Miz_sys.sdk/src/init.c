#include "init.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "osc.h"

void system_initialize(){
	/************ TFcard ************/

//	char *SD_Path = "0:/";  //  string pointer to the logical drive number
//	int status;

	/************ TFcard ************/

	/************ 初始化外设 ************/

	Timer_init(&Timer, TIMER_LOAD_VALUE, TIMER_DEV_ID);
	Iic_init(&IicPs, IIC_DEVICE_ID, IIC_SCLK_RATE);
	Gpiopl_init(&Gpio, AXI_GPIO_DEV_ID);
	Vtc_init(&Vtc, VTC_DEV_ID, &Vtc_timing, VIDEO_RESOLUTION_WSVGA);
	Vdma_Init(&AxiVdma, AXI_VDMA_DEV_ID);
	PWM_Init(PWM_DEV_BASEADDR, PERIOD_CLOCK_NUM, DUTY_CLOCK_NUM, PWM_INDEX);
	Init_Intr_System(&Intc);
	Timer_Setup_Intr_System(&Intc, &Timer, TIMER_IRPT_INTR);
	Gpiopl_Setup_Intr_System(&Intc, &Gpio, GPIO_INTR_ID);
    Vdma_Setup_Intr_System(&Intc, &AxiVdma, VDMA_INTR_ID);
	Setup_Intr_Exception(&Intc);
	PWM_Enable(PWM_DEV_BASEADDR);
	gpio_output_state = gpio_output_state | LCD_BL_EN_MASK;
	XGpio_DiscreteWrite(&Gpio, 1, gpio_output_state);

//	DMA_Intr_Init(&ADC_AxiDma,ADC_DMA_DEV_ID);// ADCMIX DMA initialize
//	DMA_Setup_Intr_System(&Intc,&ADC_AxiDma,ADC_RX_INTR_ID);//setup dma interrupt system ADCMIX
//	DMA_Intr_Enable(&Intc,&ADC_AxiDma); // enable dma interrupt ADCMIX

    XAxiDma_Config *CfgPtr;
    CfgPtr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);
    int status = XAxiDma_CfgInitialize(&ADC_AxiDma, CfgPtr);
    xil_printf("%d\n\r", status);

	OSC_mWriteReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG1_OFFSET, 0); // trigger
	OSC_mWriteReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG2_OFFSET, 0); // horizon, default 1us
	OSC_mWriteReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG3_OFFSET, 0); // trigger level
	OSC_mWriteReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG6_OFFSET, 0); // channel1
	OSC_mWriteReg(XPAR_OSC_0_S00_AXI_BASEADDR, OSC_S00_AXI_SLV_REG7_OFFSET, 0); // channel2


//	status = SD_init(SD_Path);
//	if(status == XST_FAILURE){
//		xil_printf("Fail to initialize SD card!");
//		return ;
//	}
//	else xil_printf("Success to initialize SD card!");

	/************ 初始化外设 ************/

	/************ 初始化图形库 ************/

	lv_init();	//初始化lvgl
	lv_port_disp_init(); //初始化lvgl显示驱动
	lv_port_indev_init(); //初始化lvgl触摸驱动
	Timer_start(&Timer);  //开启定时器，驱动图形库
	Vdma_Start(&AxiVdma); //开启VDMA，屏幕显示

	/************ 初始化图形库 ************/

}
