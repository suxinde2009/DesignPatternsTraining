package com.kunhong.library.Design.FactoryMethod.general;

/**
 * ���󹤳���
 * @author lyq
 *
 */
public abstract class Creator {
	/**
	 * ����һ����Ʒ����������������Ϳ����������ã�ͨ��ΪString�� Enum�� Class�ȣ���ȻҲ����Ϊnull
	 */
	public abstract <T extends Product> T createProduct(Class<T> c);
}
