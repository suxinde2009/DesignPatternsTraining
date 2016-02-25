package Expression;


/**
 *  解释器模式
 *  给定一个语言，定义它的文法的一种表示，并定义一个解释器，这个解释器使用该表示来解释语言中的句子。
  	适用性
    	当有一个语言需要解释执行,并且你可将该语言中的句子表示为一个抽象语法树时，可使用解释器模式。而当存在以下情况时该模式效果最好：
    	1.该文法简单对于复杂的文法,文法的层次变得庞大而无法管理。
    	2.效率不是一个关键问题最高效的解释器通常不是通过直接解释语法分析树实现的,而是首先将它们转换成另一种形式。
 * @author Administrator
 *
 */
public class Test {
   public static void main(String[] args) {
        Context ctx = new Context();
        ctx.add(new SimpleExpression());
        ctx.add(new AdvanceExpression());
        ctx.add(new SimpleExpression());
        
        for (Expression eps : ctx.getList()) {
            eps.interpret(ctx);
        }
    }
}
