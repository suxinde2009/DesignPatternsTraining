package com.kunhong.library.Design.Decorator.general;

/**
 * ����װ����
 * @author lyq
 *
 */
public abstract class Decorator extends Component{
	private Component component = null;
	
	public Decorator(Component component){
		this.component = component;
	}

	//ί�и���������ִ��
	@Override
	public void operate() {
		// TODO Auto-generated method stub
		this.component.operate();
	}
}
