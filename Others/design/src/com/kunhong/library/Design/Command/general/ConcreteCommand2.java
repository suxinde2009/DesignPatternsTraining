package com.kunhong.library.Design.Command.general;

public class ConcreteCommand2 extends Command{
	//���ĸ�Receive
	private Receive receiver;
	
	public ConcreteCommand2(Receive receiver) {
		this.receiver = receiver;
	}

	//����ʵ��һ������
	@Override
	public void execute() {
		// TODO Auto-generated method stub
		//ҵ����
		this.receiver.doSomeThing();
	}
	
	

}
