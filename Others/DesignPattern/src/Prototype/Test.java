package Prototype;

/**
 * 用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。
 * 
  	适用性
    1.当一个系统应该独立于它的产品创建、构成和表示时。
    2.当要实例化的类是在运行时刻指定时，例如，通过动态装载。
    3.为了避免创建一个与产品类层次平行的工厂层次时。
    4.当一个类的实例只能有几个不同状态组合中的一种时。
    建立相应数目的原型并克隆它们可能比每次用合适的状态手工实例化该类更方便一些。
 * @author Administrator
 *
 */
public class Test {
	public static void main(String[] args) {
        Prototype pro = new ConcretePrototype("prototype");
        Prototype pro2 = (Prototype)pro.clone();
        System.out.println(pro.getName());
        System.out.println(pro2.getName());
    }
}
