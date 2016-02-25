package Component;

import java.util.ArrayList;

public class ProjectManager extends Employer{
	public ProjectManager(String name) {
        setName(name);
        employers = new ArrayList();
    }
    
    public void add(Employer employer) {
        employers.add(employer);
    }

    public void delete(Employer employer) {
        employers.remove(employer);
    }
}
