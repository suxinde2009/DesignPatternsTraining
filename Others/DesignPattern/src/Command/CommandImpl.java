package Command;

public class CommandImpl extends Command {

	/**
	 * 将一个接收者对象(receiver)绑定于一个动作。 调用接收者相应的操作，以实现Execute。
	 * @param receiver
	 */
    public CommandImpl(Receiver receiver) {
        super(receiver);
    }
    
    public void execute() {
        receiver.receive();
    }
}
