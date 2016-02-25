package com.kunhong.library.Design.Adapter.general;

/**
 * 场景类
 * @author lyq
 *
 */
public class Clinet {
	public static void main(String[] agrs){
		//原有的业务逻辑
		Target target = new ConcreteTarget();
		target.request();
		
		//现在增加了适配器角色后的业务逻辑
		Target target2 = new Adapter();
		target2.request();
		
	}
}
