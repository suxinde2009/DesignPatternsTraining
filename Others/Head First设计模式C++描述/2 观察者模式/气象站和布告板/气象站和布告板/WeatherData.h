#pragma once
#include "subject.h"
#include "observer.h"
#include <vector>
#include <algorithm>

using namespace std;

//��������

class WeatherData :
	public Subject
{
private:
	vector<Observer *> observers;   //��vector������¼�۲���,�ڹ��캯���г�ʼ��
	float temperature;
	float humidity;
	float pressure;

public:
	WeatherData(void);

	void registerObserver(Observer *o);
	void removeObserver(Observer *o);
	void notifyObserver();
	
	void measurementsChanged();    //��������վȡ���µĹ۲�ֵʱ������֪ͨ�۲���
	void setMeasurements(float t, float h, float p);  //���Է���
	~WeatherData(void);
};
