package com.kunhong.library.Design.Decorator.general;

/**
 * 具体的装饰者
 * @author lyq
 *
 */
public class ConcreteDecorator1 extends Decorator{

	public ConcreteDecorator1(Component component) {
		super(component);
		// TODO Auto-generated constructor stub
	}
	
	//定义自己的装饰方法
	public void method1(){
		
	}
	
	//重写父类的Operation
	public void operate(){
		this.method1();
		super.operate();
	}

}
