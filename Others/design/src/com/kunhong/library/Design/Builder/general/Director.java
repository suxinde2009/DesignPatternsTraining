package com.kunhong.library.Design.Builder.general;

/**
 * 导演类
 * @author lyq
 *
 */
public class Director {
	private Builder builder = new ConcreteProduct();
	
	//构建产品零件
	public Product getAProduct(){
		builder.setPart();
		
		/**
		 * 设置不同的零件，产生不同的产品
		 */
		return builder.buildProduct();
	}
}
