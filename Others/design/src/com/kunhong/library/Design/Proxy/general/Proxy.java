package com.kunhong.library.Design.Proxy.general;

/**
 * 代理类
 * @author lyq
 *
 */
public class Proxy implements Subject{
	//具体代理类
	public Subject subject = null;
	
	public Proxy(Subject subject){
		this.subject = subject;
	}
	
	@Override
	public void request() {
		// TODO Auto-generated method stub
		this.before();
		subject.request();
		this.after();
	}
	
	//预处理
	public void before(){
		
	}
	
	//善后处理
	public void after(){
		
	}

}
