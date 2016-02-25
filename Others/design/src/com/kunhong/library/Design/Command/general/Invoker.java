package com.kunhong.library.Design.Command.general;

/**
 * ������Invoker
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

	//ִ������
	public void action(){
		this.command.execute();
	}
}
