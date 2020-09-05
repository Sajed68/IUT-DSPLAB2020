/*
 * iobuffer.h
 *
 *  Created on: Sep 4, 2020
 *      Author: SajedRakhshani
 */

#include<stdio.h>

// be aware of using this file, you must add **dsplib** include folder
// to your project:

#include<dsplib.h>

int read_buffer(int *data, int L, FILE * fp);
void write_buffer(int *data, int L, FILE * fp);
