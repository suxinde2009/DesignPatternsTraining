package Memento;

/**
 * 原发起创建一个备忘录,用以记录当前时刻的内部状态。
        使用备忘录恢复内部状态.
 * @author Administrator
 *
 */
public class Originator {
	private String state;

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
    
    public Memento createMemento() {
        return new Memento(state);
    }
    
    public void setMemento(Memento memento) {
        state = memento.getState();
    }
    
    public void showState(){
        System.out.println(state);
    }
}
