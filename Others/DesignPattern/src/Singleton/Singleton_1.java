package Singleton;

/**
 * 懒汉，线程安全）：
 * 这种写法能够在多线程中很好的工作，而且看起来它也具备很好的lazy loading，
 * 但是，遗憾的是，效率很低，99%情况下不需要同步。

 */

public class Singleton_1 {
    private static Singleton_1 instance;
    private Singleton_1 (){}
    public static synchronized Singleton_1 getInstance() {
	if (instance == null) {
	    instance = new Singleton_1();
	}
	return instance;
    }
}
