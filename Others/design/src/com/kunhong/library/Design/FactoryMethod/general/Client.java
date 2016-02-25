package com.kunhong.library.Design.FactoryMethod.general;

/**
 * 场景类
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		Creator creator = new ConcreteCreator();
		Product product = creator.createProduct(ConcreteProduct1.class);
		
		/**
		 * 继续业务处理
		 */
	}
}
