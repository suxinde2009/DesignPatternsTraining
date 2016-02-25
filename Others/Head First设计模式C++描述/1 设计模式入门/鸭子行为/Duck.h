#pragma once

#include <iostream>
#include "flybehavior.h"
#include "quackbehavior.h"

using namespace std;

//�ͻ���
class Duck
{
protected:
	FlyBehavior *flyBehavior;
	QuackBehavior *quackBehavior;

public:
	Duck(void);

	virtual void display() = 0;
	void performFly();
	void performQuack();
	void swim();

	~Duck(void);
};
