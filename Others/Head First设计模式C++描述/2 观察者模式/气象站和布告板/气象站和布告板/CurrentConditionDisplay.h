#pragma once
#include "observer.h"
#include "subject.h"
#include "displayelement.h"
#include <iostream>

using namespace std;

//����۲��ߣ�������һ�����ڴ�ֻʵ������һ��
class CurrentConditionDisplay :
	public Observer, public DisplayElement
{
private:
	float temperature;
	float humidity;
	Subject* weatherData;

public:
	//��������ҪWeather������Ϊע��֮��
	CurrentConditionDisplay(Subject* w);

	void update(float temp, float humidity, float pressure);
	void display();

	~CurrentConditionDisplay(void);
};
