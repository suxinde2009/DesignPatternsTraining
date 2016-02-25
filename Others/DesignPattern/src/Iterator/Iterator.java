package Iterator;

/**
 * 迭代器定义访问和遍历元素的接口。
 * @author Administrator
 *
 */
public interface Iterator {
	Object next();
    
    void first();
    
    void last();
    
    boolean hasNext();

}
