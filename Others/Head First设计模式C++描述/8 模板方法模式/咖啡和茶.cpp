/*ģ�巽��ģʽ����һ�������ж����㷨�ĹǼܣ�����һЩ�����ӳٵ������С�
ģ�巽��ʹ����������ڲ��ı��㷨�ṹ������£����¶����㷨�е�ĳЩ���衣*/

#include <iostream>

using namespace std;

//�����������Ǹ�������
class CaffineBeverage
{
public:
        //������Ҫ�ض���Ĳ���
        virtual void brew() = 0;
        virtual void addCondiments() = 0;

        virtual void boilWater()
        {
                cout << "Boiling water" << endl;
        }
        virtual void pourInCup()
        {
                cout << "Pouring into cup" << endl;
        }
        //����(Hook), ��������Ƿ�Ҫ���Ǹ÷���
        virtual bool customerWantsCondiments()
        {
                return true;
        }

        //��ͬһ�������������Ϳ��ȡ�prepareRecipeΪ���鷽��
        void prepareRecipe()
        {
                boilWater();
                brew();
                pourInCup();
                if (customerWantsCondiments())
                        addCondiments();
        }
};

//�������¶��岽��
class TeaWithHook: public CaffineBeverage
{
public:
        void brew()
        {
                cout << "Steeping the tea" << endl;
        }
        void addCondiments()
        {
                cout << "Adding Lemon" << endl;
        }
        //���ǹ���, ����û�а�getUserInput()���������������������ΪC++��IO��java���㣬��������̫���������
        bool customerWantsCondiments()
        {
                cout << "Would you like lemon with your coffee (y/n)? ";
                char answer;
                cin >> answer;
                if (answer == 'y' || answer == 'Y')
                        return true;
                else
                        return false;
        }
};

class CoffeeWithHook: public CaffineBeverage
{
public:
        void brew()
        {
                cout << "Dripping Coffee through filter" << endl;
        }
        void addCondiments()
        {
                cout << "Adding Sugar and Milk" << endl;
        }
        //���ǹ���
        bool customerWantsCondiments()
        {
                cout << "Would you like milk and sugar with your coffee (y/n)? ";
                char answer;
                cin >> answer;
                if (answer == 'y' || answer == 'Y')
                        return true;
                else
                        return false;
        }
};

//����
int main()
{
        TeaWithHook *teaHook = new TeaWithHook;
        CoffeeWithHook *coffeeHook = new CoffeeWithHook;

        cout << "\nMaking tea..." << endl;
        teaHook -> prepareRecipe();

        cout << "\nMaking coffee..." << endl;
        coffeeHook ->prepareRecipe();

        delete coffeeHook;
        delete teaHook;

        return 0;
}
