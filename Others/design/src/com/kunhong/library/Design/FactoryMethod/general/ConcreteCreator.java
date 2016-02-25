package com.kunhong.library.Design.FactoryMethod.general;

/**
 * 具体工厂类
 * @author lyq
 *
 */
public class ConcreteCreator extends Creator{

	@Override
	public <T extends Product> T createProduct(Class<T> c) {
		// TODO Auto-generated method stub
		Product product = null;
		
		try{
			product = (Product)Class.forName(c.getName()).newInstance();
		}catch(Exception e){
			//异常处理
		}
		
		return (T)product;
	}
	
}
