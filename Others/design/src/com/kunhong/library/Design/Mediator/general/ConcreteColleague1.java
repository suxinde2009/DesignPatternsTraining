package com.kunhong.library.Design.Mediator.general;

/**
 * ����ͬ����
 * @author lyq
 *
 */
public class ConcreteColleague1 extends Collegue{

	//ͨ���캯�������н���
	public ConcreteColleague1(Mediator mediator) {
		super(mediator);
		// TODO Auto-generated constructor stub
	}
	
	//���з���self-method
	public void SelfMethod1(){
		//�����Լ���ҵ���߼�
	}
	
	//�������� dep-method
	public void depMethod1(){
		//�Լ����ܴ����ҵ���߼�,ί�и��н��ߴ���
		super.mediator.doSomeThing1();
	}

}
