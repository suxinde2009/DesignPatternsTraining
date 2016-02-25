package Singleton;

/**
 * 保证一个类仅有一个实例，提供一个访问它的全局访问点。
 * 
 * @author Administrator
 *
 */
public class Test {
	public static void main(String args[]){
		Singleton_0 sing = Singleton_0.getInstance();
	    Singleton_0 sing2 = Singleton_0.getInstance();
	    
	    System.out.println(sing);
	    System.out.println(sing2);
	}
}
