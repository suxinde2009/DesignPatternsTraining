//����ģʽ�������󡱷�װ�ɶ����Ա�ʹ�ò�ͬ�����󡢶��л�����־����������������
//����ģʽҲ֧�ֿɳ����Ĳ���
#include "simpleremotecontrol.h"
#include "light.h"
#include "lightOnCommand.h"

//����
int main()
{
	//ң�������ǵ�����
	SimpleRemoteControl remote;
	//���������Ľ�����
	Light light;
	//��������������ߴ�����
	LightOnCommand lightOn(light);

	//�������������
	remote.setCommand(&lightOn);
	remote.buttonWasPressed();

	return 0;
}