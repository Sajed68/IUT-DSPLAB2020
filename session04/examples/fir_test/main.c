/*
 * main.c
 */
#include <dsplib.h>
#include "fdacoefs.h"
#include "iobuffer.h"

#define L 1000

FILE * sinegen;


DATA dbuffer[nh+2];
int x[L];
DATA r[L+nh];

DATA xe[L+nh];
int status;
int i;
int main(void) {

	// open sine generator:
	sinegen = fopen("..\\two_sines.bin", "rb");
	// open output file:
	FILE * output;
	output = fopen("..\\filterdout12.bin", "wb");

	for(i = 0; i < L + nh; xe[i] = 0, i++);


		// get one buffer data:
		status = read_buffer(x, L, sinegen);
		fclose(sinegen);
		/************************/
		/** initialization of array: **/
		for(i = 0; i<L+nh; r[i] = 0,i++);
		for(i = 0; i<L; xe[i+nh-1] = x[i], i++);

		// filtering:
		fir(xe, h, r, dbuffer, L+nh, nh);

		// shift window on the next filter size samples:
		//for(i = 0; i <nh; xe[i] = x[L-nh + i],i++);

		// write to output:
		write_buffer((int *)r, L, output);



	// close files:
	fclose(output);

	
	return 0;
}
