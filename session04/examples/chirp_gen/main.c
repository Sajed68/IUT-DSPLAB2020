#include <stdio.h>
#include <math.h>
#include "iobuffer.h"
#define PI 3.14159265

FILE * fp;
long unsigned int i;
int x[250];
double v;
int j = 0;
long unsigned int fs = 10000; // Hz
/*
 * main.c
 */
int main(void) {
	fp = fopen("two_sines.bin", "wb");
//	fp = fopen("two_sines.bin", "rb");

//	read_buffer(y, 10, fp);


	for(i=0; i< fs ; i++)
	{
		v = pow(2, 10) * sin(2 * PI * 200 * i / fs) + pow(2, 10) * sin(2 * PI * 1000 * i / fs);
		//v = pow(2, 14)*sin(2*PI*(0.5*1000*i*i/fs+i)/fs);
		x[j] = (int) (v);
		j ++;
		if (j >= 250){
			j = 0;
			write_buffer(x, 250, fp);
		}
	}
	fclose(fp);

	return 0;
}
