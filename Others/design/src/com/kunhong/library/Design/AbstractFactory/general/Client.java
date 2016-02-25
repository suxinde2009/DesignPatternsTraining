package com.kunhong.library.Design.AbstractFactory.general;

/**
 * ������
 * @author lyq
 *
 */
public class Client {
	
	public static void main(String[] args){
		//�������������
		AbstractCreator creator1 = new CreatorA();
		AbstractCreator creator2 = new CreatorB();
		
		//����A1����
		AbstractProductA a1 = creator1.createProductA();
		//����A2����
		AbstractProductB a2 = creator1.createProductB();
		
		/**
		 * ���ﴦ��ҵ���߼�...
		 */
	}

}
