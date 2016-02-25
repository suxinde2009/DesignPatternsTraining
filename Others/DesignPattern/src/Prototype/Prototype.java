package Prototype;

/**
 *  声明一个克隆自身的接口。
 * @author Administrator
 *
 */
public class Prototype implements Cloneable {

    private String name;
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getName() {
        return this.name;
    }

    public Object clone(){
        try {
            return super.clone();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

