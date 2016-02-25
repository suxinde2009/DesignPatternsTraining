package com.kunhong.library.Design.Command.general;

/**
 * 抽象的Command类
 * @author lyq
 *
 */
public abstract class Command {
	//每个命令都必须处理一定的业务逻辑
	public abstract void execute();
}
