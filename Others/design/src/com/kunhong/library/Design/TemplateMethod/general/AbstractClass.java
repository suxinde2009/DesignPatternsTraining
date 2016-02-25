package com.kunhong.library.Design.TemplateMethod.general;

/**
 * ����ģ����
 * @author lyq
 *
 */
public abstract class AbstractClass {
	//��������
	protected abstract void doSomething();
	
	//��������
	protected abstract void doAnything();
	
	//ģ�巽��
	public final void templateMethod(){
		/**
		 * ���û��������������ص��߼�
		 */
		this.doAnything();
		this.doSomething();
	}

}
