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
int TOTAL_ITERATIONS = 1000000;

int main() {
    struct timespec t1, t2;
    int is = sizeof(int);
    // s0 - number of int words int bigint sources, s - int realisation-specific words
    int s0 = 100, s = s0 * is / BigInt::WS; 
    int* words = (int*)calloc(2*s0, is);
    for (int* t = words; t < words + 2*s0; t++) *t = rand();
	BigInt *a = new BigInt(s, (void*)words);
	BigInt *b = new BigInt(s, (void*)(words+s0));
    for (int i = 0; i < 20; i++) {
		clock_gettime(CLOCK_MONOTONIC_RAW, &t1);

		for (int j = 0; j < TOTAL_ITERATIONS / s0 / 2; j++) {
			*a += *b;
			*a -= *b;
		}
		
		clock_gettime(CLOCK_MONOTONIC_RAW, &t2);
		
		long long diff = 1000000000LL*(t2.tv_sec - t1.tv_sec) + t2.tv_nsec - t1.tv_nsec;
		// print cpu clock ticks per addition of one 32 bit block of bigint words in plus/minus operation
		// my cpu is 3.2 GHz
		printf("%d\n", int(diff*320/TOTAL_ITERATIONS));
	}
    return 0;
}

