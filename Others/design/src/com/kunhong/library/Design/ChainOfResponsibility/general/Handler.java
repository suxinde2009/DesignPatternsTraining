package com.kunhong.library.Design.ChainOfResponsibility.general;

/**
 * ��������
 * @author lyq
 *
 */
public abstract class Handler {
	private Handler nextHandler;
	
	public final Response handleMessage(Request request){
		Response response = null;
		
		//�ж��Ƿ����Լ��Ĵ���ȼ�
		if(this.getHandlerLevel().equals(request.getRequestLevel())){
			response = this.echo(request);
		}else{
			//�������Լ��Ĵ�����
			//�ж��Ƿ�����һ��������
			if(this.nextHandler != null){
				response = this.nextHandler.handleMessage(request);
			}else{
				//û���ʵ��Ĵ����ߣ�ҵ�����д���
			}
		}
		
		return response;
	}
	
	//������һ��������
	public void setNext(Handler handler){
		this.nextHandler = handler;
	}
	
	//ÿ�������߶���һ��������
	protected abstract Level getHandlerLevel(); 
	
	//ÿ�������߶�����ʵ�ִ�������
	protected abstract Response echo(Request request);
}
