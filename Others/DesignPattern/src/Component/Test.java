package Component;

import java.util.List;

/**
 * 将对象组合成树形结构以表示"部分-整体"的层次结构。"
 * 
 * Composite使得用户对单个对象和组合对类的使用具有一致性。" 
 * 适用性 
 * 1.你想表示对象的部分-整体层次结构。
 * 2.你希望用户忽略组合对象与单个对象的不同，用户将统一地使用组合结构中的所有对象。
 * 
 * @author Administrator
 * 
 */
public class Test {
	public static void main(String[] args) {
		Employer pm = new ProjectManager("项目经理");
		Employer pa = new ProjectAssistant("项目助理");
		Employer programmer1 = new Programmer("程序员一");
		Employer programmer2 = new Programmer("程序员二");

		pm.add(pa);// 为项目经理添加项目助理
		pm.add(programmer2);// 为项目经理添加程序员

		List<Employer> ems = pm.getEmployers();
		for (Employer em : ems) {
			System.out.println(em.getName());
		}
	}
}
