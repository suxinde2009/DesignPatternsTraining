//��������ģʽ������һ����������Ľӿڣ������������Ҫʵ������������һ����
//�������������ʵ�����Ƴٵ����ࡣ
//���ԭ��Ҫ�������󣬲�Ҫ����������
#include <iostream>
#include "nypizzastore.h"
#include "chicagopizzastore.h"

using namespace std;

//����
int main()
{
	//����������ͬ�ĵ�
	NYPizzaStore nyStore;
	ChicagoPizzaStore chicagoStore;

	Pizza *pizza = nyStore.orderPizza("cheese");
	cout << "Ethan ordered a " << pizza->getName() << "\n" << endl;
	delete pizza;

	pizza = chicagoStore.orderPizza("cheese");
	cout << "Joel ordered a " << pizza->getName() << "\n" << endl;
	delete pizza;

	return 0;
}