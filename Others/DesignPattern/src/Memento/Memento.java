package Memento;

/**
 * 备忘录存储原发起对象的内部状态。
 * @author Administrator
 *
 */
public class Memento {

    private String state;

    public Memento(String state) {
        this.state = state;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
