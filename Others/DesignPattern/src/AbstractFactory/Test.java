package AbstractFactory;

/**
 * 抽象工厂模式
 * 提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。
  	适用性
    1.一个系统要独立于它的产品的创建、组合和表示时。
    2.一个系统要由多个产品系列中的一个来配置时。
    3.当你要强调一系列相关的产品对象的设计以便进行联合使用时。
    4.当你提供一个产品类库，而只想显示它们的接口而不是实现时。

 * @author Administrator
 *
 */
public class Test {
	public static void main(String args[]){
		IAnimalFactory blackAnimalFactory = new BlackAnimalFactory();
	    ICat blackCat = blackAnimalFactory.createCat();
	    blackCat.eat();
	    IDog blackDog = blackAnimalFactory.createDog();
	    blackDog.eat();
	    
	    //
	    IAnimalFactory whiteAnimalFactory = new WhiteAnimalFactory();
	    ICat whiteCat = whiteAnimalFactory.createCat();
	    whiteCat.eat();
	    IDog whiteDog = whiteAnimalFactory.createDog();
	    whiteDog.eat();
	}
}
