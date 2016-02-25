package Command;

/**
 * 声明执行操作的接口
 * @author Administrator
 *
 */
public abstract class Command {
    
	//知道如何实现与执行一个请求相关的操作。任何类都可能作为一个接收者。
    protected Receiver receiver;
    
    public Command(Receiver receiver) {
        this.receiver = receiver;
    }
    
    public abstract void execute();
}

