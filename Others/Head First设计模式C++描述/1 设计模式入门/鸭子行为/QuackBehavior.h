#pragma once

#include <iostream>

using namespace std;

//��װ���ɽ���Ϊ
class QuackBehavior
{
public:
	QuackBehavior(void);

	virtual void quack() = 0;

	~QuackBehavior(void);
};
