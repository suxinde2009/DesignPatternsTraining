#pragma once
#include "pizzastore.h"
#include "nystylecheesepizza.h"

//���幤����
class NYPizzaStore :
	public PizzaStore
{
public:
	NYPizzaStore(void);
	~NYPizzaStore(void);

	//���幤������
	Pizza* createPizza(string item);
};
