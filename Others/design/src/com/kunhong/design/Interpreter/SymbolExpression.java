package com.kunhong.design.Interpreter;

/**
 * ����������Ž�����
 * 
 * @author lyq
 * 
 */
public abstract class SymbolExpression extends Expression {

	protected Expression left;

	protected Expression right;

	// ���еĽ�����ʽ��Ӧֻ�����Լ������������ʽ�Ľ��

	public SymbolExpression(Expression _left, Expression _right) {

		this.left = _left;

		this.right = _right;

	}

}