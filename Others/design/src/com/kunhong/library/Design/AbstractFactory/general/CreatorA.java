package com.kunhong.library.Design.AbstractFactory.general;

/**
 * ��Ʒ�ȼ�A������
 * @author lyq
 *
 */
public class CreatorA extends AbstractCreator{

	@Override
	public AbstractProductA createProductA() {
		// TODO Auto-generated method stub
		return new ProductA1();
	}

	@Override
	public AbstractProductB createProductB() {
		// TODO Auto-generated method stub
		return null;
	}

}
