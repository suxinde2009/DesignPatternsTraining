package com.kunhong.library.Design.Command.general;

//场景类
public class Client {
	public static void main(String[] args){
		//首先声明调用者Invoker
		Invoker invoker = new Invoker();
		
		//定义接收者
		Receive receiver = new ConcreteReceive1();
		
		//定义一个发送给接收者的指令
		Command command = new ConcreteCommand1(receiver);
		
		//把命令交给调用者执行
		invoker.setCommand(command);
		invoker.action();
	}
}
