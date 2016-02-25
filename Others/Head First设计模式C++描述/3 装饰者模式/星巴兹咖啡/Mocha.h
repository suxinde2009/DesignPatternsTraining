#pragma once
#include "condimentdecorator.h"

//Mocha��һ��װ����
class Mocha :
	public CondimentDecorator
{
private:
	Beverage* beverage;   //��һ����Ա������¼��װ����
public:
	Mocha(Beverage* b);   //�ѱ�װ���ߵ������캯���Ĳ��������ɹ��캯����¼����Ա������

	string getDescription();
	double cost();

	~Mocha(void);
};
