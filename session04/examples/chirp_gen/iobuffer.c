/*
 * iobuffer.c
 *
 *  Created on: Sep 4, 2020
 *      Author: SajedRakhshani
 */


#include "iobuffer.h"

void write_buffer(int *data, int L, FILE * fp)
{

	int i;
	for(i=0; i <L; i++)
	{
		fputc(data[i] & 0xFF, fp);
		fputc(data[i] >> 8, fp);
	}

}

void read_buffer(int *data, int L, FILE * fp)
{

	int i = 0;
	int buf[2];
	for(i=0; i<L; i++)
	{
		fread(buf, 2, 1, fp);
		data[i] = (buf[1] << 8) | buf[0];
	}

}
