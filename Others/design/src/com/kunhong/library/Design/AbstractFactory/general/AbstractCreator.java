package com.kunhong.library.Design.AbstractFactory.general;

/**
 * 抽象工厂类
 * 
 * @author lyq
 * 
 */
public abstract class AbstractCreator {
	// 创建A产品家族
	public abstract AbstractProductA createProductA();

	// 创建B产品家族
	public abstract AbstractProductB createProductB();
}
