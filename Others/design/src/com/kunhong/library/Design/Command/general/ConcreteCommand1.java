package com.kunhong.library.Design.Command.general;

public class ConcreteCommand1 extends Command{
	//���ĸ�Receive
	private Receive receiver;
	
	public ConcreteCommand1(Receive receiver) {
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
