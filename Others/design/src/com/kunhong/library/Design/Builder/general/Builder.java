package com.kunhong.library.Design.Builder.general;

/**
 * ��������
 * @author lyq
 *
 */
public abstract class Builder {
	//���ò�Ʒ�Ĳ�ͬ���֣��Ի�ò�ͬ�Ĳ�Ʒ
	public abstract void setPart();
	
	//�����Ʒ
	public abstract Product buildProduct();
}
