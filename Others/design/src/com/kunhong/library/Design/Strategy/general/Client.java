package com.kunhong.library.Design.Strategy.general;

/**
 * 场景类
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		//声明具体的一个策略
		Strategy strategy = new ConcreteStrategy1();
		
		//具体上下文对象
		Context context = new Context(strategy);
		
		//执行封装后的方法
		context.doAnyThing();
		
	}
}
