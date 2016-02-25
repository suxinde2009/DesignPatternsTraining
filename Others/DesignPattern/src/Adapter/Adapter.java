package Adapter;

/**
 * 对Adaptee的接口与Target接口进行适配
 * @author Administrator
 *
 */
public class Adapter implements Target {

    private Adaptee adaptee;
    
    public Adapter(Adaptee adaptee) {
        this.adaptee = adaptee;
    }

	public void adapteeMethod() {
		adaptee.adapteeMethod();
	}

	public void adapterMethod() {
		System.out.println("Adapter method!");
    }
}