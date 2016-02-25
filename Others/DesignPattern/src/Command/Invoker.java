package Command;

public class Invoker {
	private Command command;
    
    public void setCommand(Command command) {
        this.command = command;
    }
    /**
     * 要求该命令执行这个请求。
     */
    public void execute() {
        command.execute();
    }
}
