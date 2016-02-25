package Mediator;

/**
 * 具体中介者通过协调各同事对象实现协作行为
       了解并维护它的各个同事。
 * @author Administrator
 *
 */
public class ConcreteMediator extends Mediator{

    private ColleagueA ca;
    
    private ColleagueB cb;
    
    public ConcreteMediator() {
        ca = new ColleagueA();
        cb = new ColleagueB();
    }
    
    public void notice(String content) {
        if (content.equals("boss")) {
            //老板来了, 通知员工A
            ca.action();
        }
        if (content.equals("client")) {
            //客户来了, 通知前台B
            cb.action();
        }
    }
}

