package Decorator;

/**
 * 动态地给一个对象添加一些额外的职责。就增加功能来说，Decorator模式相比生成子类更为灵活。
 * @author Administrator
 *
 */
public class Test {
	public static void main(String args[]){
		Work squarePeg = new SquarePeg(); 
		Work decorator = new Decorator(squarePeg);
		decorator.insert(); 
	}
}
