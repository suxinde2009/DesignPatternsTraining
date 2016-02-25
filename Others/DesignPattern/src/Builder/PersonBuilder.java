package Builder;

/**
 *  为创建一个Product对象的各个部件指定抽象接口。
 * @author Administrator
 *
 */
public interface PersonBuilder {
	void buildHead();
    
    void buildBody();
    
    void buildFoot();

    Person buildPerson();
}
