package com.kunhong.library.Design.Builder.general;

/**
 * ������
 * @author lyq
 *
 */
public class Director {
	private Builder builder = new ConcreteProduct();
	
	//������Ʒ���
	public Product getAProduct(){
		builder.setPart();
		
		/**
		 * ���ò�ͬ�������������ͬ�Ĳ�Ʒ
		 */
		return builder.buildProduct();
	}
}
