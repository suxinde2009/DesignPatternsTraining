package com.kunhong.library.Design.Command.general;

public class ConcreteCommand1 extends Command{
	//对哪个Receive
	private Receive receiver;
	
	public ConcreteCommand1(Receive receiver) {
		this.receiver = receiver;
	}

	//必须实现一个命令
	@Override
	public void execute() {
		// TODO Auto-generated method stub
		//业务处理
		this.receiver.doSomeThing();
	}
	
	

}
