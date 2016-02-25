#include "MallardDuck.h"

MallardDuck::MallardDuck(void)
{
	//ʵ������Ϊ
	quackBehavior = new Quack;
	flyBehavior = new FlyWithWings;
}

void MallardDuck::display()
{
	cout << "I'm a real Mallard Duck" << endl;
}

MallardDuck::~MallardDuck(void)
{
	delete quackBehavior;
	delete flyBehavior;
}
