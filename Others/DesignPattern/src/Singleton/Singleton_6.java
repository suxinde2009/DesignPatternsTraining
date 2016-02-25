package Singleton;

/**
 * （双重校验锁）：
 * 
 * 
 * 
 * @author Administrator
 * 
 */
public class Singleton_6 {
	private volatile static Singleton_6 singleton;

	private Singleton_6() {
	}

	public static Singleton_6 getSingleton() {
		if (singleton == null) {
			synchronized (Singleton_6.class) {
				if (singleton == null) {
					singleton = new Singleton_6();
				}
			}
		}
		return singleton;
	}
}
