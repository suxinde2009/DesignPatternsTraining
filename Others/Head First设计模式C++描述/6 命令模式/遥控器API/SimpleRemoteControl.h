#pragma once
#include "command.h"

class SimpleRemoteControl
{
private:
	Command *slot;   //��һ����۳�������
public:
	SimpleRemoteControl(void);
	~SimpleRemoteControl(void);

	void setCommand(Command *command);
	void buttonWasPressed();
};
