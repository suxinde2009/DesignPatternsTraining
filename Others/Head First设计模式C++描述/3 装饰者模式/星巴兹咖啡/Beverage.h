#pragma once

#include <string>

using namespace std;

//װ���ߺͱ�װ�ζ���Ĺ�ͬ����
class Beverage
{
protected:
	string description; 
public:
	Beverage(void);

	virtual string getDescription();
	virtual double cost() = 0;   //������������ʵ��

	~Beverage(void);
};
