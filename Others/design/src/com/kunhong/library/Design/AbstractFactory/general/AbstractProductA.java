package com.kunhong.library.Design.AbstractFactory.general;

/**
 * 抽象产品类
 * @author lyq
 *
 */
public abstract class AbstractProductA {
	//每个产品共有的方法
	public void shareMethod(){
		
	}
	
	//每个产品相同方法，不同实现
	public abstract void doSomeThing();
}
