package com.kunhong.library.Design.Decorator.general;

/**
 * �����װ����
 * @author lyq
 *
 */
public class ConcreteDecorator2 extends Decorator{

	public ConcreteDecorator2(Component component) {
		super(component);
		// TODO Auto-generated constructor stub
	}
	
	//�����Լ���װ�η���
	public void method2(){
		
	}
	
	//��д�����Operation����
	public void operate(){
		this.method2();
		super.operate();
	}

}
