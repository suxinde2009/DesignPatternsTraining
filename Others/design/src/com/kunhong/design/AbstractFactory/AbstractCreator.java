package com.kunhong.design.AbstractFactory;

/**
 * ���󹤳�
 * 
 * @author lyq
 * 
 */
public abstract class AbstractCreator {
	/**
	 * ����A��Ʒ��
	 * 
	 * @return
	 */
	public abstract AbstractProductA createProductA();

	/**
	 * ����B��Ʒ��
	 * 
	 * @return
	 */
	public abstract AbstractProductB createProductB();
}
