package com.kunhong.library.Design.Adapter.general;

/**
 * ������
 * @author lyq
 *
 */
public class Clinet {
	public static void main(String[] agrs){
		//ԭ�е�ҵ���߼�
		Target target = new ConcreteTarget();
		target.request();
		
		//������������������ɫ���ҵ���߼�
		Target target2 = new Adapter();
		target2.request();
		
	}
}
