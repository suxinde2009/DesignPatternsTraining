package com.kunhong.library.Design.Mediator.general;

/**
 * 具体同事类
 * 
 * @author lyq
 * 
 */
public class ConcreteColleague2 extends Collegue {

	public ConcreteColleague2(Mediator mediator) {
		super(mediator);
		// TODO Auto-generated constructor stub
	}

	// 自有方法self-method
	public void selfMethod2() {
		// 处理自己的业务逻辑
	}

	// 依赖方法 dep-method
	public void depMethod2() {
		// 自己不能处理的业务逻辑,委托给中介者处理
		super.mediator.doSomeThing2();
	}

}
