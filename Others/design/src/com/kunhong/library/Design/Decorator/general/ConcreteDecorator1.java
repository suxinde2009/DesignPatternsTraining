package com.kunhong.library.Design.Decorator.general;

/**
 * �����װ����
 * @author lyq
 *
 */
public class ConcreteDecorator1 extends Decorator{

	public ConcreteDecorator1(Component component) {
		super(component);
		// TODO Auto-generated constructor stub
	}
	
	//�����Լ���װ�η���
	public void method1(){
		
	}
	
	//��д�����Operation
	public void operate(){
		this.method1();
		super.operate();
	}

}
