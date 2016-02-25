package com.kunhong.library.Design.Decorator.general;

/**
 * 场景类
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		Component component = new ConcreteComponet();
		
		//第一次装饰
		component = new ConcreteDecorator1(component);
		
		//第二次装饰
		component = new ConcreteDecorator2(component);
		
		//修饰后运行
		component.operate();
	}
	 

}
