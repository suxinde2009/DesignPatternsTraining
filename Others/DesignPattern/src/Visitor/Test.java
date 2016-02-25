package Visitor;

import java.util.ArrayList;
import java.util.List;

/**
 *  表示一个作用于某对象结构中的各元素的操作。
           它使你可以在不改变各元素的类的前提下定义作用于这些元素的新操作。
 * 
 * 适用性
    1.一个对象结构包含很多类对象，它们有不同的接口，而你想对这些对象实施一些依赖于其具体类的操作。
    2.需要对一个对象结构中的对象进行很多不同的并且不相关的操作，而你想避免让这些操作“污染”这些对象的类。
    Visitor使得你可以将相关的操作集中起来定义在一个类中。
      当该对象结构被很多应用共享时，用Visitor模式让每个应用仅包含需要用到的操作。
    3.定义对象结构的类很少改变，但经常需要在此结构上定义新的操作。
      改变对象结构类需要重定义对所有访问者的接口，这可能要很大的代价。
      如果对象结构类经常改变，那么可能还是在这些类中定义这些操作较好。
 * @author Administrator
 *
 */
public class Test {
	 public static void main(String[] args) {
	        Visitor visitor = new ConcreteVisitor();
	        StringElement se = new StringElement("abc");
	        se.accept(visitor);
	        
	        FloatElement fe = new FloatElement(new Float(1.5));
	        fe.accept(visitor);
	        System.out.println("===========");
	        List result = new ArrayList();
	        result.add(new StringElement("abc"));
	        result.add(new StringElement("abc"));
	        result.add(new StringElement("abc"));
	        result.add(new FloatElement(new Float(1.5)));
	        result.add(new FloatElement(new Float(1.5)));
	        result.add(new FloatElement(new Float(1.5)));
	        visitor.visitCollection(result);
	    }
}
