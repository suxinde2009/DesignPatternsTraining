package com.kunhong.library.Design.FactoryMethod.general;

/**
 * ������
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		Creator creator = new ConcreteCreator();
		Product product = creator.createProduct(ConcreteProduct1.class);
		
		/**
		 * ����ҵ����
		 */
	}
}
