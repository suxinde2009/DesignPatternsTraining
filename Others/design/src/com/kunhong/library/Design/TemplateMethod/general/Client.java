package com.kunhong.library.Design.TemplateMethod.general;

/**
 * ������
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		//���ɾ����ģ����
		AbstractClass class1 = new ConcreteClass1();
		AbstractClass class2 = new ConcreteClass2();
		
		//����ģ�巽��
		class1.templateMethod();
		class2.templateMethod();
	}
}
