/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "platform.h"
#include "xgpio.h"
#include "xil_printf.h"
#include <stdio.h>
//#include <time.h>

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define GPIO_0  XPAR_GPIO_0_DEVICE_ID
#define GPIO_1  XPAR_GPIO_1_DEVICE_ID
#define GPIO_2	XPAR_GPIO_2_DEVICE_ID

/*
 * The following constant is used to wait after an LED is turned on to make
 * sure that it is visible to the human eye.  This constant might need to be
 * tuned for faster or slower processor speeds.
 */
#define LED_DELAY     10000000

/*
 * The following constant is used to determine which channel of the GPIO is
 * used for the LED if there are 2 channels supported.
 */
#define BUTTON_CHANNEL 1
#define LED_CHANNEL 2
#define SUCCESS_RATE_CHANNEL 1
#define STATE_CHANNEL 2
#define SEARCH_NUM_CHANNEL 1
#define ARRAY_CHANNEL 2

#define IN 1
#define OUT 0

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/
/*
#ifdef PRE_2_00A_APPLICATION


 * The following macros are provided to allow an application to compile that
 * uses an older version of the driver (pre 2.00a) which did not have a channel
 * parameter. Note that the channel parameter is fixed as channel 1.

#define XGpio_SetDataDirection(InstancePtr, DirectionMask) \
        XGpio_SetDataDirection(InstancePtr, LED_CHANNEL, DirectionMask)

#define XGpio_DiscreteRead(InstancePtr) \
        XGpio_DiscreteRead(InstancePtr, LED_CHANNEL)

#define XGpio_DiscreteWrite(InstancePtr, Mask) \
        XGpio_DiscreteWrite(InstancePtr, LED_CHANNEL, Mask)

#define XGpio_DiscreteSet(InstancePtr, Mask) \
        XGpio_DiscreteSet(InstancePtr, LED_CHANNEL, Mask)

#endif
 */

/************************** Function Prototypes ******************************/

//void print_progress(void);
void print_success_rate(int success_rate);

/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */

XGpio IO_Gpio; /* The Instance of the GPIO Driver */
XGpio out_Gpio;
XGpio num_Gpio;

/*****************************************************************************/
/**
 *
 * The purpose of this function is to illustrate how to use the GPIO
 * driver to turn on and off an LED.
 *
 * @param	None
 *
 * @return	XST_FAILURE to indicate that the GPIO Initialization had
 *		failed.
 *
 * @note		This function will not return if the test is running.
 *
 ******************************************************************************/
int main(void)
{
	int Status;
	int success_rate = 0;
	int attack_count = 0;
	//	int pre_success_rate = 0;
	int pre_attack_count = 0;
	int state;
	int search = 0;
	int fin_search = 0;
	int attack = 0;
	int achieved = 0;
	int not_achieved = 0;
	int search_num = 0;
	int all_searched = 0;
	int array[8] = {};	//でバグ用
	int i;
//	int st, end;

//	st = clock();
	/* Initialize the GPIO driver */
	Status = XGpio_Initialize(&IO_Gpio, GPIO_0);
	if (Status != XST_SUCCESS) {
		xil_printf("IO_Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	Status = XGpio_Initialize(&out_Gpio, GPIO_1);
	if (Status != XST_SUCCESS) {
		xil_printf("out_Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	Status = XGpio_Initialize(&num_Gpio, GPIO_2);
	if (Status != XST_SUCCESS) {
		xil_printf("out_Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&IO_Gpio, LED_CHANNEL, OUT);
	XGpio_SetDataDirection(&IO_Gpio, BUTTON_CHANNEL, IN);
	XGpio_SetDataDirection(&out_Gpio, SUCCESS_RATE_CHANNEL, IN);
	XGpio_SetDataDirection(&out_Gpio, STATE_CHANNEL, IN);
	XGpio_SetDataDirection(&num_Gpio, SEARCH_NUM_CHANNEL, IN);
	XGpio_SetDataDirection(&num_Gpio, ARRAY_CHANNEL, IN);


	/* Loop forever blinking the LED */
	printf("\nconnected to Arty\n");
	state = XGpio_DiscreteRead(&out_Gpio, STATE_CHANNEL);
	printf("state = %d\n",state);
	/*
	xil_printf("search = %d\n", state&2);
	xil_printf("attack = %d\n", state&4);
	 */
	while (1) {
		//		pre_success_rate = success_rate;
		pre_attack_count = attack_count;
		success_rate = XGpio_DiscreteRead(&out_Gpio, SUCCESS_RATE_CHANNEL);
		attack_count = (success_rate & 0xFFFF0000) >> 16;
		achieved = (success_rate & 0x00000002) >> 1;
		not_achieved = success_rate & 0x00000001;
		success_rate = (success_rate & 0x0000FFF0) >> 4;

		/*デバッグ用*/
		//		array[0] = (success_rate & 0x0000FF00) >> 8;
		//		array[1] = success_rate & 0x000000FF;

		/*下位8ビットに情報が入っているので取り出す*/
		state = XGpio_DiscreteRead(&out_Gpio, STATE_CHANNEL);
		for(i=0; i<8; i++){
			array[i] = (XGpio_DiscreteRead(&num_Gpio, ARRAY_CHANNEL) >> 4*(7 - i)) & 0xF;
		}

		MB_Sleep(5);

		//		if(array[1]!=0){
		//			printf("\rarray[0] = %5d, array[1] = %5d, all_searched = %d, success_count = %d", array[0], array[1], (state>>2)&1, attack_count);
		//		}

		if(state&1 && !fin_search){
			printf("\n----- Search finished -----\n");
			fin_search = 1;
		}
		if(state&(1<<3) && !attack){
			if(search){
				printf("\x1b[3B");
			}
			printf("\n----- Start attack -----\n");
			attack=1;
		}else if(!(state&(1<<3)) && attack){
			if(search){
				printf("\x1b[3B");
			}
			printf("\n----- Stop attack -----\n");
			attack=0;
		}
		if(state&(1<<1) && !search){
			printf("\n----- Searching -----\n");
			search=1;
		}else if(!(state&(1<<1)) && search){
			printf("\x1b[3B");
			printf("\n----- Search stop -----\n");
			search=0;
		}
		if(state&(1<<2) && !all_searched){
			printf("\nsearch is finished : This attack failed\n");
			all_searched = 1;
		}

		if(search){
//			end = clock();
			search_num = XGpio_DiscreteRead(&num_Gpio, SEARCH_NUM_CHANNEL);
			printf("\narray[0] = %d, array[1] = %d, array[2] = %d, array[3] = %d, array[4] = %d, array[5] = %d, array[6] = %d, array[7] = %d\n", array[0],array[1],array[2],array[3],array[4],array[5],array[6],array[7]);
//			printf("progress = %9d  %3.1f %% \n", search_num, ((float)search_num/9765625)*100);	//4782969
//			printf("progress = %9d  %3.1f %% \n", search_num, ((float)search_num/39062500)*100);	//1bit目の改ざんも探索
//			printf("progress = %9d  %3.1f %% \n", search_num, ((float)search_num/282475249)*100);	//7^10
			printf("progress = %10d  %3.1f %% \n", search_num, ((float)search_num/3486784401)*100);	//9^10
//			printf("time = %10d s\n", (end - st));
			printf("\x1b[3A");
		}

		if(attack_count != pre_attack_count && !all_searched){
			if(search){
				printf("\x1b[4B");
			}
			//			printf("attack count change   attack_count = %d\n",attack_count);
			printf("\nsuccess_probability=%4d/1000",success_rate);
			if(search){
				printf("\n");
			}
			//			xil_printf("achieved = %d, not_achieved = %d\n", achieved, not_achieved);
			//			xil_printf("search = %d\n",state&(1<<1));
		}
	}

	xil_printf("Successfully ran Gpio Example\r\n");
	return XST_SUCCESS;
}


void print_success_rate(int success_rate){

}
//void print_progress(void){
//	int search_num = 0;
//
//	if(search_num != XGpio_DiscreteRead(&num_Gpio, SEARCH_NUM_CHANNEL)){
//		printf("\r progress = %6d", search_num);
//	}
//	search_num = XGpio_DiscreteRead(&num_Gpio, SEARCH_NUM_CHANNEL);
//}
