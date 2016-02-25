#pragma once
#include "beverage.h"

//װ���ߣ�����
class CondimentDecorator :
	public Beverage
{
public:
	CondimentDecorator(void);

	virtual string getDescription() = 0;

	~CondimentDecorator(void);
};
