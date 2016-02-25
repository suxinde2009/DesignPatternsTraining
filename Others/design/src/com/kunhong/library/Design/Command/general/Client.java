package com.kunhong.library.Design.Command.general;

//������
public class Client {
	public static void main(String[] args){
		//��������������Invoker
		Invoker invoker = new Invoker();
		
		//���������
		Receive receiver = new ConcreteReceive1();
		
		//����һ�����͸������ߵ�ָ��
		Command command = new ConcreteCommand1(receiver);
		
		//�������������ִ��
		invoker.setCommand(command);
		invoker.action();
	}
}
