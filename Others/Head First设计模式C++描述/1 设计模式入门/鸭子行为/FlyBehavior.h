#pragma once

#include <iostream>

using namespace std;

//��װ������Ϊ
class FlyBehavior
{
public:
	FlyBehavior(void);

	virtual void fly() = 0;

	~FlyBehavior(void);
};
