package Mediator;

/**
 * 每一个同事类都知道它的中介者对象。
       每一个同事对象在需与其他的同事通信的时候也与它的中介者通信
 * @author Administrator
 *
 */
public class ColleagueA extends Colleage{
	 public void action() {
	        System.out.println("普通员工努力工作");
	 }
}
