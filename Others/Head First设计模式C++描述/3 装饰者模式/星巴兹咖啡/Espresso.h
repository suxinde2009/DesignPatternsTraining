#pragma once
#include "beverage.h"

//���屻װ����
class Espresso :
	public Beverage
{
public:
	Espresso(void);

	double cost();

	~Espresso(void);
};
