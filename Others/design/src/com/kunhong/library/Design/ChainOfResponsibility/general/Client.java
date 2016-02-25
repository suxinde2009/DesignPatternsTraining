package com.kunhong.library.Design.ChainOfResponsibility.general;

/**
 * 场景类
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		//声明所有的处理结点
		Handler handler1 = new ConcreteHandler1();
		Handler handler2 = new ConcreteHandler2();
		Handler handler3 = new ConcreteHandler3();
		
		//设置链中的阶段顺序1-->2-->3
		handler1.setNext(handler2);
		handler2.setNext(handler3);
		
		//提交请求，返回结果
		Response response = handler1.handleMessage(new Request());
	}
}
