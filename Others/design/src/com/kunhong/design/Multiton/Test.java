package com.kunhong.design.Multiton;

/**
 * ����ģʽ��ʵΪ����ģʽ���ƹ�
 * 
 * @author lyq
 * 
 */
public class Test {
	private static Dice dice1 = Dice.getInstance(Dice.INSTANCE1), dice2 = Dice
			.getInstance(Dice.INSTANCE2);

	public static void main(String[] args) {

		int value1 = dice1.roll();
		int value2 = dice2.roll();
		System.out.println(value1);
		System.out.println(value2);
	}
}
