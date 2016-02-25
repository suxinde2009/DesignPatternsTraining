#pragma once

//����ӿ�

//�����۲�����
class Observer;

class Subject
{
public:
	Subject(void);

	virtual void registerObserver(Observer* o) = 0;
	virtual void removeObserver(Observer* o) = 0;

	//������״̬�ı�ʱ����������ᱻ���ã���֪ͨ���еĹ۲���
	virtual void notifyObserver() = 0;

	~Subject(void);
};
