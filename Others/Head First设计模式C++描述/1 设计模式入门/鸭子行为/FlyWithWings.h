#pragma once
#include "flybehavior.h"

//���������Ϊ
class FlyWithWings :
	public FlyBehavior
{
public:
	FlyWithWings(void);

	void fly();

	~FlyWithWings(void);
};
