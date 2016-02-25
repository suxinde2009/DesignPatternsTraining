package com.kunhong.library.Design.AbstractFactory.general;

/**
 * 场景类
 * @author lyq
 *
 */
public class Client {
	
	public static void main(String[] args){
		//定义出两个工厂
		AbstractCreator creator1 = new CreatorA();
		AbstractCreator creator2 = new CreatorB();
		
		//产生A1对象
		AbstractProductA a1 = creator1.createProductA();
		//产生A2对象
		AbstractProductB a2 = creator1.createProductB();
		
		/**
		 * 这里处理业务逻辑...
		 */
	}

}
