package Command;

/**
 *   将一个请求封装为一个对象，从而使你可用不同的请求对客户进行参数化；对请求排队或记录请求日志，以及支持可撤消的动作。
 适用性
    1.抽象出待执行的动作以参数化某对象。
    2.在不同的时刻指定、排列和执行请求。
    3.支持取消操作。
    4.支持修改日志，这样当系统崩溃时，这些修改可以被重做一遍。
    5.用构建在原语操作上的高层操作构造一个系统。
 * @author Administrator
 *
 */
public class Test {
	public static void main(String[] args) {
		//建立一个请求
        Receiver rec = new Receiver();
        //将请求参数化
        Command cmd = new CommandImpl(rec);
        Invoker i = new Invoker();
        //设置命令
        i.setCommand(cmd);
        //指定
        i.execute();
    }
}
