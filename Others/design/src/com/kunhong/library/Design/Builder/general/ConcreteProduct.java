package com.kunhong.library.Design.Builder.general;

/**
 * ���彨����
 * @author lyq
 *
 */
public class ConcreteProduct extends Builder{
	private Product product = new Product();
	
	//���ò�Ʒ���
	public void setPart(){
		/**
		 * ��Ʒ���ڵ��߼�����
		 */
	}
	
	//�齨һ����Ʒ
	public Product buildProduct(){
		return product;
	}
}
