#include "Duck.h"

Duck::Duck(void)
{
}

void Duck::performFly()
{
	flyBehavior->fly();   //ί�и���Ϊ�࣬��ͬ
}

void Duck::performQuack()
{
	quackBehavior->quack();
}

void Duck::swim()
{
	cout << "All duck float, even decoys!" << endl;
}

Duck::~Duck(void)
{
}
