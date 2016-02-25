package Proxy;


/***
 * 为其他对象提供一种代理以控制对这个对象的访问。
  适用性

    1.远程代理（RemoteProxy）为一个对象在不同的地址空间提供局部代表。
    2.虚拟理（VirtualProxy）根据需要创建开销很大的对象。
    3.保护代理（ProtectionProxy）控制对原始对象的访问。
    4.智能指引（SmartReference）取代了简单的指针，它在访问对象时执行一些附加操作。

 * @author Administrator
 *
 */
public class Test {
	public static void main(String args[]){
		//代理 Object 类, 其自身实现了Object的接口 
		Object obj = new ProxyObject();
        obj.action();
	}
}
