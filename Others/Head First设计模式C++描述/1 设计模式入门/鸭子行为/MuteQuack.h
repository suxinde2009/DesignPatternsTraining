#pragma once
#include "quackbehavior.h"

//�������ɽ���
class MuteQuack :
	public QuackBehavior
{
public:
	MuteQuack(void);

	void quack();

	~MuteQuack(void);
};
