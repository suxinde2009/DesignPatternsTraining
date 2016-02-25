package com.kunhong.library.Design.Proxy.general;

/**
 * ������
 * @author lyq
 *
 */
public class Proxy implements Subject{
	//���������
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
	
	//Ԥ����
	public void before(){
		
	}
	
	//�ƺ���
	public void after(){
		
	}

}
