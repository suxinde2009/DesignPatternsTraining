//װ����ģʽ����̬�Ľ����θ��ӵ������ϡ���Ҫ��չ���ܣ�װ�����ṩ�˱ȼ̳и��е��Ե��������

//OOԭ�򣺶���չ���ţ����޸Ĺر�

#include <iostream>
#include "beverage.h"
#include "condimentdecorator.h"
#include "Espresso.h"
#include "houseblend.h"
#include "mocha.h"

using namespace std;

int main()
{
	Beverage* beverage = new Espresso;   //��һ���޵��ϵ�Espresso
	cout << beverage->getDescription() << " $" << beverage->cost() << endl;

	//����û�н���DarkRoast��

	Beverage* beverage3 = new HouseBlend;
	beverage3 = new Mocha(beverage3);   //��Mochaװ��
	beverage3 = new Mocha(beverage3);   //�õڶ���Mochaװ��
	cout << beverage3->getDescription() << " $" << beverage3->cost() << endl; 

	delete beverage3;
	delete beverage;

	return 0;
}