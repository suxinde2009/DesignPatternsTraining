#pragma once
#include "quackbehavior.h"

//�������ɽ���
class Squeak :
	public QuackBehavior
{
public:
	Squeak(void);

	void quack();

	~Squeak(void);
};
