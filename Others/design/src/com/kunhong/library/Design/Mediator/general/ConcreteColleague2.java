package com.kunhong.library.Design.Mediator.general;

/**
 * ����ͬ����
 * 
 * @author lyq
 * 
 */
public class ConcreteColleague2 extends Collegue {

	public ConcreteColleague2(Mediator mediator) {
		super(mediator);
		// TODO Auto-generated constructor stub
	}

	// ���з���self-method
	public void selfMethod2() {
		// �����Լ���ҵ���߼�
	}

	// �������� dep-method
	public void depMethod2() {
		// �Լ����ܴ����ҵ���߼�,ί�и��н��ߴ���
		super.mediator.doSomeThing2();
	}

}
