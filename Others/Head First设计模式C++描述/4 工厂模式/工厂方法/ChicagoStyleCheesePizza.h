#pragma once
#include "pizza.h"

//�����Ʒ��2
class ChicagoStyleCheesePizza :
	public Pizza
{
public:
	ChicagoStyleCheesePizza(void);
	~ChicagoStyleCheesePizza(void);

	void cut();  //������cut����
};
