package Mediator;

/**
 * 中介者定义一个接口用于与各同事（Colleague）对象通信。
 * @author Administrator
 *
 */
public abstract class Mediator {

    public abstract void notice(String content);
}

