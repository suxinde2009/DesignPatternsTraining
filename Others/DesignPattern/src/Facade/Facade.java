package Facade;

/**
 * 知道哪些子系统类负责处理请求
 * 将客户的请求代理给适当的子系统对象。
 * @author Administrator
 *
 */
public class Facade {

	ServiceA sa;

	ServiceB sb;

	ServiceC sc;

	public Facade() {
		sa = new ServiceAImpl();
		sb = new ServiceBImpl();
		sc = new ServiceCImpl();
	}

	public void methodA() {
		sa.methodA();
		sb.methodB();
	}

	public void methodB() {
		sb.methodB();
		sc.methodC();
	}

	public void methodC() {
		sc.methodC();
		sa.methodA();
	}
}
