package com.kunhong.library.Design.Strategy.general;

/**
 * ������
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		//���������һ������
		Strategy strategy = new ConcreteStrategy1();
		
		//���������Ķ���
		Context context = new Context(strategy);
		
		//ִ�з�װ��ķ���
		context.doAnyThing();
		
	}
}
