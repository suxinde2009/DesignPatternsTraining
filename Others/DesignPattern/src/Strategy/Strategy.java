package Strategy;

/**
 * 定义所有支持的算法的公共接口。Context使用这个接口来调用某ConcreteStrategy定义的算法。
 * @author Administrator
 *
 */
public abstract class Strategy {

    public abstract void method();
}
