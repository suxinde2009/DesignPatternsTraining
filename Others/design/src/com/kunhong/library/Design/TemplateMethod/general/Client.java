package com.kunhong.library.Design.TemplateMethod.general;

/**
 * 场景类
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		//生成具体的模板类
		AbstractClass class1 = new ConcreteClass1();
		AbstractClass class2 = new ConcreteClass2();
		
		//调用模板方法
		class1.templateMethod();
		class2.templateMethod();
	}
}
