#include "BigInt.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

int main1() {
	BigInt *a = new BigInt(1);
	BigInt *b = new BigInt(1);
	BigInt * t;
	for (int i = 0; i < 100; i++)
	{
		*a += *b;
		t = a;
		a = b;
		b = t;
		printf("%s %s\n", a->hex(), b->hex());
	}
	for (int i = 0; i < 100; i++)
	{
		*b -= *a;
		t = a;
		a = b;
		b = t;
		printf("%s %s\n", a->hex(), b->hex());
	}
	return 0;
}

int main2() {
	BigInt a = BigInt(8);
	BigInt b = BigInt(5);
	printf("%s %s\n", a.hex(), b.hex());
	BigInt c = a - b;
	printf("%s %s %s\n", a.hex(), b.hex(), c.hex());
	a -= BigInt::ONE;
	printf("%s %s %s\n", a.hex(), b.hex(), c.hex());
	b -= BigInt::ONE;
	printf("%s %s %s\n", a.hex(), b.hex(), c.hex());
	c -= BigInt::ONE;
	printf("%s %s %s\n", a.hex(), b.hex(), c.hex());
	a -= BigInt::ZERO;
	printf("%s %s %s\n", a.hex(), b.hex(), c.hex());
	b -= BigInt::ZERO;
	printf("%s %s %s\n", a.hex(), b.hex(), c.hex());
	c -= BigInt::ZERO;
	printf("%s %s %s\n", a.hex(), b.hex(), c.hex());
	return 0;
}

int main() {
    struct timespec t1, t2;
    int is = sizeof(int);
    // s0 - number of int words int bigint sources, s - int realisation-specific words
    int s0 = 100, s = s0 * is / BigInt::WS; 
    printf("%d\n", s);
    int* words = (int*)calloc(2*s0, is);
    for (int* t = words; t < words + 2*s0; t++) *t = rand();
    BigInt *a = new BigInt(s, (void*)words);
    BigInt *b = new BigInt(s, (void*)(words+s0));
    BigInt *t = new BigInt(*a);
    for (int j = 0; j < 10; j++) {
		*a = *t;
		clock_gettime(CLOCK_MONOTONIC, &t1);
		
		*a += *b;
		
		clock_gettime(CLOCK_MONOTONIC, &t2);
		// print cpu clock ticks per one bigint plus/minus operation
		// 32/10 - my cpu is 3.2 GHz
		printf("%ld\n", (t2.tv_nsec - t1.tv_nsec)*32/10);
	}
	//printf("%s\n", a->hex());
    return 0;
}

