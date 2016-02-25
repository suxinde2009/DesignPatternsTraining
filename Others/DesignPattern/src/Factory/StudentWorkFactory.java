package Factory;


/**
 * 参与者：ConcreteProduct
      	实现Product接口。
 * @author Administrator
 *
 */
public class StudentWorkFactory implements IWorkFactory {

	public Work getWork() {
		return new StudentWork();
	}
}
