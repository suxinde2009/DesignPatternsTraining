package Template;

/**
 * 	定义一个操作中的算法的骨架，并将一些步骤延迟到子类中。
    TemplateMethod使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤。
 * @author Administrator
 *
 */
public class Test {
	public static void main(String[] args) {
        Template temp = new TemplateConcrete();
        temp.update();
    }
}
