#pragma once

//��ʾ�ӿڣ���C++��ʹ�ö��ؼ̳���ɴ���Ŀ��ûʲô��Ҫ����Ϊ�˺�ԭ����������ﻹ�Ƕ����˸ýӿ�

class DisplayElement
{
public:
	DisplayElement(void);

	//���������Ҫ��ʾʱ�����ô˷���
	virtual void display() = 0;

	~DisplayElement(void);
};
