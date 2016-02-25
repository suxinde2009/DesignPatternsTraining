package com.kunhong.library.Design.ChainOfResponsibility.general;

/**
 * ������
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		//�������еĴ�����
		Handler handler1 = new ConcreteHandler1();
		Handler handler2 = new ConcreteHandler2();
		Handler handler3 = new ConcreteHandler3();
		
		//�������еĽ׶�˳��1-->2-->3
		handler1.setNext(handler2);
		handler2.setNext(handler3);
		
		//�ύ���󣬷��ؽ��
		Response response = handler1.handleMessage(new Request());
	}
}
