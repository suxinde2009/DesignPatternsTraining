#pragma once
#include "beverage.h"

//���屻װ����
class HouseBlend :
	public Beverage
{
public:
	HouseBlend(void);

	double cost();

	~HouseBlend(void);
};
