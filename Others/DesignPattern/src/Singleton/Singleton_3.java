package Singleton;

/**
 * （饿汉，变种）：
表面上看起来差别挺大，其实更第三种方式差不多，都是在类初始化即实例化instance。


 * @author Administrator
 *
 */
public class Singleton_3 {
    private static Singleton_3 instance = null;
    static {
    	instance = new Singleton_3();
    }
    private Singleton_3 (){}
    public static Singleton_3 getInstance() {
    	return instance;
    }
}
