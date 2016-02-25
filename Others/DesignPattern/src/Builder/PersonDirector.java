package Builder;

/**
 * 构造一个使用Builder接口的对象。
 * @author Administrator
 *
 */
public class PersonDirector {
	 public Person constructPerson(PersonBuilder pb) {
	        pb.buildHead();
	        pb.buildBody();
	        pb.buildFoot();
	        return pb.buildPerson();
	  }
}
