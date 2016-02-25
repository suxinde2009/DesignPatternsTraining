package Visitor;
/**
 * 定义一个Accept操作，它传递一个访问者为参数。
 * @author Administrator
 *
 */
public interface  Visitable {
	 public void accept(Visitor visitor);
}
