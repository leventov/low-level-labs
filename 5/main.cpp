#include "BigInt.h"
#include <stdio.h>
#include <stdio.h>

void main1()
{
	unsigned int a = 10, b = 11;
	a -= b;
	freopen("1.out","w",stdout);
	for (int i = 0; i < 32; i++) printf("%d", (int)(a>>i)&1);
	printf("\n");
}

int main() {
	//freopen("1.out","w",stdout);
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

int main3() {
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
