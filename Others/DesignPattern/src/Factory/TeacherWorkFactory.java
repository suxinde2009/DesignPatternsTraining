package Factory;

public class TeacherWorkFactory implements IWorkFactory{
	public Work getWork() {
        return new TeacherWork();
    }
}
