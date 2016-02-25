/*����ģʽ��ȷ��һ����ֻ��һ��ʵ�������ṩһ��ȫ�ַ��ʵ�*/

//��ֹ��ǰ(2011��2��25��), C++��׼��û�ж��߳��������, ���, �ڴ��ݲ������̰߳�ȫ��
//����ĵ���ģʽʵ��
#include <iostream>
using namespace std;

class Singleton
{
private:
        static Singleton* uniqueInstance;
        Singleton();         //Ĭ�Ϲ�����˽��
        Singleton(const Singleton &);   //����������˽��
        Singleton& operator=(const Singleton &);   //��ֵ������˽��
        ~Singleton();

public:
        static Singleton& getInstance();
        static void destroyInstance();    //�൱��ª�ĺ���, ������򵥵�ʵ��Ҳ������
};

Singleton* Singleton::uniqueInstance = NULL;  //��̬������ʼ��

Singleton& Singleton::getInstance()
{
        if (uniqueInstance == NULL)
        {
                uniqueInstance = new Singleton;
        }
        return *uniqueInstance;
}

void Singleton::destroyInstance()
{
        delete uniqueInstance;
        uniqueInstance = NULL;
}
