package com.kunhong.library.Design.Decorator.general;

/**
 * ������
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		Component component = new ConcreteComponet();
		
		//��һ��װ��
		component = new ConcreteDecorator1(component);
		
		//�ڶ���װ��
		component = new ConcreteDecorator2(component);
		
		//���κ�����
		component.operate();
	}
	 

}
