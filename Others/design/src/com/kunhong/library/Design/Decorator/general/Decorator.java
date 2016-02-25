package com.kunhong.library.Design.Decorator.general;

/**
 * 抽象装饰者
 * @author lyq
 *
 */
public abstract class Decorator extends Component{
	private Component component = null;
	
	public Decorator(Component component){
		this.component = component;
	}

	//委托给被修饰者执行
	@Override
	public void operate() {
		// TODO Auto-generated method stub
		this.component.operate();
	}
}
