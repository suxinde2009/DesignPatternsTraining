package AbstractFactory;

public class BlackAnimalFactory implements IAnimalFactory  {

	public ICat createCat() {
		// TODO Auto-generated method stub
		return new BlackCat();
	}

	public IDog createDog() {
		// TODO Auto-generated method stub
		return new BlackDog();
	}
}
