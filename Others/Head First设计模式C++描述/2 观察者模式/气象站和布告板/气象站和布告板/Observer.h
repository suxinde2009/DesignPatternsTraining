#pragma once

//�۲��߽ӿڣ����������ڸ�������

class Observer
{
public:
	Observer(void);

	virtual void update(float temp, float humidity, float pressure) = 0;

	~Observer(void);
};
