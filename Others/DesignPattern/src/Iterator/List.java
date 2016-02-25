package Iterator;

/**
 * 具体迭代器实现迭代器接口。
      对该聚合遍历时跟踪当前位置。
 * @author Administrator
 *
 */
public interface List {
	Iterator iterator();
    
    Object get(int index);
    
    int getSize();
    
    void add(Object obj);
}
