#pragma once
#include "quackbehavior.h"

//�������ɽ���Ϊ
class Quack :
	public QuackBehavior
{
public:
	Quack(void);

	void quack();

	~Quack(void);
};
