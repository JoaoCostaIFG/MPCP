/*
 ============================================================================
 Name        : hld.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>

double  str[] = {1.0, 2.0};

double NORMAVECTOR(double *ptV, long int n);

int main (){
	printf("%f\n", NORMAVECTOR(str, 4));
	return 0;
}
