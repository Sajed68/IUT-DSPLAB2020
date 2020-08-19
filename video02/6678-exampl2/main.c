#include <stdio.h>
#include <math.h>

#define pi 3.14
/*
 * main.c
 */
double x[100];
double f = 10;
int main(void) {
	int i = 0;
	double t = 0;
	double step = 0.01; // Sampling rate = 100 Hz
	for (t = 0; t< 1; t = t + step, i++)
	{
		x[i] = cos(2*pi*f*t);
	}
    i++;
	return 0;
}
