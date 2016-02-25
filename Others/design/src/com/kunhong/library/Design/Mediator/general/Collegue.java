package com.kunhong.library.Design.Mediator.general;

/**
 * 抽象同事类
 * @author lyq
 *
 */
public abstract class Collegue {
	protected Mediator mediator;
	
	public Collegue(Mediator mediator){
		this.mediator = mediator;
	}
	
}
