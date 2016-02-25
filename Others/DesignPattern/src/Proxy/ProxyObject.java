package Proxy;

public class ProxyObject implements Object {

    Object obj;
    
    public ProxyObject() {
        System.out.println("这是代理类");
        obj = new ObjectImpl();
    }
    
    public void action() {
        System.out.println("代理开始");
        obj.action();
        System.out.println("代理结束");
    }
}

