package AbstractFactory;

public class WhiteAnimalFactory implements IAnimalFactory{

	public ICat createCat() {
		// TODO Auto-generated method stub
		return new WhiteCat();
	}

	public IDog createDog() {
		// TODO Auto-generated method stub
		return new WhiteDog();
	}
	
}
