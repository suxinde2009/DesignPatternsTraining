package Singleton;

/**
 * 单列模式的七种写法
 * 
 * @author Administrator
 * 
 */

// 1（懒汉，线程不安全）：这种写法lazy loading很明显，但是致命的是在多线程不能正常工作。
public class Singleton_0 {

	private static Singleton_0 instance;

	private Singleton_0() {
	}

	public static Singleton_0 getInstance() {
		if (instance == null) {
			instance = new Singleton_0();
		}
		return instance;
	}
}
