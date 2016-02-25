package Decorator;

import java.util.ArrayList;
import java.util.ListIterator;

/**
 * 
 * 
 * 
 * 现在有一个应用:需要在桩打入前,挖坑,在打入后,在桩上钉木板,这些额外的功能是动态,可能随意增加调整修改, 
 * 比如,可能又需要在打桩之后钉架子(只是比喻).
 * 那么我们使用Decorator模式,这里方形桩SquarePeg是decoratee(被刷油漆者),
 * 我们需要在decoratee上刷些"油漆",这些油漆就是那些额外的功能.
 * 
 * @author Administrator
 * 
 */
public class Decorator implements Work {

	private Work work;
	// 额外增加的功能被打包在这个List中
	private ArrayList others = new ArrayList();

	// 在构造器中使用组合new方式,引入Work对象;
	public Decorator(Work work) {
		this.work = work;
		others.add("挖坑");
		others.add("钉木板");
	}

	public void insert() {

		newMethod();
	}

	// 在新方法中,我们在insert之前增加其他方法,这里次序先后是用户灵活指定的
	public void newMethod() {
		otherMethod();
		work.insert();
	}

	public void otherMethod() {
		ListIterator listIterator = others.listIterator();
		while (listIterator.hasNext()) {
			System.out.println(((String) (listIterator.next())) + " 正在进行");
		}
	}
}
