#pragma once

class BigInt
{
public:
	BigInt(int);
	~BigInt(void);
	BigInt(const BigInt &s);
	BigInt &operator=(const BigInt &s);
	BigInt &operator+=(const BigInt &rhs);
	BigInt &operator-=(const BigInt &rhs);
	BigInt &operator+(const BigInt &rhs);
	BigInt &operator-(const BigInt &rhs);
	char* hex();

	static BigInt ONE;
	static BigInt ZERO;
private:
	void* words;
	int wc;

	static int WS; //word size
	
	BigInt(int, int);
	void grow(int owc);
	void alloc(int nwc);
};

