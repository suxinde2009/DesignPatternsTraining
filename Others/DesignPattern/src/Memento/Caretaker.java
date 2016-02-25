package Memento;

/**
 * 负责保存好备忘录。
      不能对备忘录的内部进行操作或检查。
 * @author Administrator
 *
 */
public class Caretaker {

	private Memento memento;

	public Memento getMemento() {
		return this.memento;
	}

	public void setMemento(Memento memento) {
		this.memento = memento;
	}
}
