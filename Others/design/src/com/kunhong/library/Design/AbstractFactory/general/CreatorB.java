package com.kunhong.library.Design.AbstractFactory.general;

/**
 * 产品等级A工厂类
 * @author lyq
 *
 */
public class CreatorB extends AbstractCreator{

	@Override
	public AbstractProductA createProductA() {
		// TODO Auto-generated method stub
		return new ProductA2();
	}

	@Override
	public AbstractProductB createProductB() {
		// TODO Auto-generated method stub
		return null;
	}

}
