#pragma once

//�����е��������ʵ����ͬ�İ���һ�������Ľӿ�
class Command
{
public:
	Command(void);
	~Command(void);

	virtual void execute() = 0;
};
