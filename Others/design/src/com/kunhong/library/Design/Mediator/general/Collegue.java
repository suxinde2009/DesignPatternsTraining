package com.kunhong.library.Design.Mediator.general;

/**
 * ����ͬ����
 * @author lyq
 *
 */
public abstract class Collegue {
	protected Mediator mediator;
	
	public Collegue(Mediator mediator){
		this.mediator = mediator;
	}
	
}
