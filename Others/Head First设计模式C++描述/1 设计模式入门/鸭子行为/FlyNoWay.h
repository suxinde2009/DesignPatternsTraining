#pragma once
#include "flybehavior.h"

//���������Ϊ
class FlyNoWay :
	public FlyBehavior
{
public:
	FlyNoWay(void);

	void fly();

	~FlyNoWay(void);
};
