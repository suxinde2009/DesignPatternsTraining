#pragma once
#include <string>
#include <iostream>
#include <vector>

using namespace std;

//�����Ʒ��
class Pizza
{
protected:
	string name;
	string dough;
	string sauce;
	vector<string> toppings;
public:
	Pizza(void);
	~Pizza(void);

	virtual void prepare();
	virtual void bake();
	virtual void cut();
	virtual void box();
	virtual string& getName();
};
