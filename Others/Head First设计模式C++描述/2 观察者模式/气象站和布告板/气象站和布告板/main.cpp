//�۲���ģʽ�������˶���֮���һ�Զ�����������һ������һ������ı�״̬ʱ�����������߶����յ�֪ͨ���Զ�����

//OOԭ��Ϊ��������֮����������ƶ�Ŭ��

#include "weatherdata.h"
#include "currentconditiondisplay.h"

//����
int main()
{
	//�����������
	WeatherData weatherData;

	//�����۲��߶���
	CurrentConditionDisplay currentDisplay(&weatherData);

	weatherData.setMeasurements(80, 65, 30.4);
	weatherData.setMeasurements(82, 70, 29.2);
	weatherData.setMeasurements(78, 90, 29.2);

	return 0;
}