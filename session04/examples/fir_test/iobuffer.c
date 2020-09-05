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

int read_buffer(int *data, int L, FILE * fp)
{

	int i = 0;
	int buf[2];
	int l = 0;
	for(i=0; i<L; i++)
	{
		//l = fread(buf, 2, 1, fp);
		l = 1;
		buf[0] = fgetc(fp);
		buf[1] = fgetc(fp);
		data[i] = (buf[1] << 8) | buf[0];
		if (l == 1)
			continue;
		else
			return l;
	}

	return 0;

}
