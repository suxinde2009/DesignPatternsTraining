package com.kunhong.library.Design.Builder.general;

/**
 * 场景类
 * @author lyq
 *
 */
public class Client {
	public static void main(String[] args){
		Director dic = new Director();
		//生产产品
		dic.getAProduct();
	}
}
