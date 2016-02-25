package com.kunhong.library.Design.Decorator.general;

/**
 * 具体的装饰者
 * @author lyq
 *
 */
public class ConcreteDecorator2 extends Decorator{

	public ConcreteDecorator2(Component component) {
		super(component);
		// TODO Auto-generated constructor stub
	}
	
	//定义自己的装饰方法
	public void method2(){
		
	}
	
	//重写父类的Operation方法
	public void operate(){
		this.method2();
		super.operate();
	}

}
