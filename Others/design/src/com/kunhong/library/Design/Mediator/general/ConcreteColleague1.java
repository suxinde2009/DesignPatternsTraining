package com.kunhong.library.Design.Mediator.general;

/**
 * 具体同事类
 * @author lyq
 *
 */
public class ConcreteColleague1 extends Collegue{

	//通构造函数传递中介者
	public ConcreteColleague1(Mediator mediator) {
		super(mediator);
		// TODO Auto-generated constructor stub
	}
	
	//自有方法self-method
	public void SelfMethod1(){
		//处理自己的业务逻辑
	}
	
	//依赖方法 dep-method
	public void depMethod1(){
		//自己不能处理的业务逻辑,委托给中介者处理
		super.mediator.doSomeThing1();
	}

}
