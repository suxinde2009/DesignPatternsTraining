/*������ģʽ����һ����Ľӿڣ�ת���ɿͻ���������һ���ӿڡ���������ԭ���ӿڲ����ݵ�����Ժ����޼�*/

/*����������ʹ�ö��ؼ̳У��������̳���Ŀ��ͱ�������*/

#include <iostream>

using namespace std;

//Duck��Ϊ����Ŀ��(Target)
class Duck
{
public:
	virtual void quack() = 0;
	virtual void fly() = 0;
};

//����Ѽ��(��ͷѼ)
class MallardDuck : public Duck
{
public:
	void quack()
	{
		cout << "Quack" << endl;
	}
	void fly()
	{
		cout << "I'm flying" << endl;
	}
};

//Turkey��Ϊ��������(Adaptee)
class Turkey
{
public:
	virtual void gobble() = 0;
	virtual void fly() = 0;
};

//����Turkey
class WildTurkey: public Turkey
{
public:
	void gobble()
	{
		cout << "Gobble gobble" << endl;
	}
	void fly()
	{
		cout << "I'm flying a short distance" << endl;
	}
};

//������(Adapter), ֻ����Ծ������������
class TurkeyAdapter: public Duck, WildTurkey
{
public:
	// ʵ��Ŀ��ӿ�
	void quack()
	{
		gobble();
	}

	void fly()
	{
		for (int i=0; i<5; i++)
		{
			WildTurkey::fly();
		}
	}
};

//����
void testDuck(Duck* duck)
{
	duck->quack();
	duck->fly();
}

int main()
{
	Duck* duck = new MallardDuck;

	WildTurkey* turkey = new WildTurkey;
	Duck* turkeyAdapter = new TurkeyAdapter;

	cout << "The Turkey says..." << endl;
	turkey->gobble();
	turkey->fly();

	cout << "\nThe Duck says..." << endl;
	testDuck(duck);

	cout << "\nThe TurkeyAdapter says..." << endl;
	testDuck(turkeyAdapter);

	delete turkeyAdapter;
	delete turkey;
	delete duck;

	return 0;
}

