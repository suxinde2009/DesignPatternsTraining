package com.kunhong.library.Design.Strategy.general;

/**
 * 封装角色
 * @author lyq
 *
 */
public class Context {
	//抽象策略
	private Strategy strategy = null;
	
	public Context(Strategy strategy){
		this.strategy = strategy;
	}
	
	//封装后的策略方法
	public void doAnyThing(){
		this.strategy.doSomeThing();
	}
}
