package Component;

/**
 * 项目助理
 * @author Administrator
 *
 */
public class ProjectAssistant extends Employer {

    public ProjectAssistant(String name) {
        setName(name);
        employers = null;//项目助理, 表示没有下属了
    }

    public void add(Employer employer) {
        
    }

    public void delete(Employer employer) {
        
    }
}

