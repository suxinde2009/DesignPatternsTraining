package com.kunhong.library.Design.Strategy.general;

/**
 * ��װ��ɫ
 * @author lyq
 *
 */
public class Context {
	//�������
	private Strategy strategy = null;
	
	public Context(Strategy strategy){
		this.strategy = strategy;
	}
	
	//��װ��Ĳ��Է���
	public void doAnyThing(){
		this.strategy.doSomeThing();
	}
}
