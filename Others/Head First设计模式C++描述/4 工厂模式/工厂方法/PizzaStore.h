#pragma once
#include <string>
#include "pizza.h"

using namespace std;

//���󹤳���
class PizzaStore
{
public:
	PizzaStore(void);
	~PizzaStore(void);

	
	virtual Pizza *orderPizza(string type);
	//��������
	virtual Pizza *createPizza(string type) = 0;
};
