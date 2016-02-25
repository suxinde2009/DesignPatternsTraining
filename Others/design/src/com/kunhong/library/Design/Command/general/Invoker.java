package com.kunhong.library.Design.Command.general;

/**
 * 调用者Invoker
 * @author lyq
 *
 */
public class Invoker {
	private Command command;
	
	public Command getCommand() {
		return command;
	}

	public void setCommand(Command command) {
		this.command = command;
	}

	//执行命令
	public void action(){
		this.command.execute();
	}
}
