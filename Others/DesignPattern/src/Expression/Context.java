package Expression;

import java.util.ArrayList;
import java.util.List;
/**
 * 包含解释器之外的一些全局信息(上下文信息)。
 * @author Administrator
 *
 */
public class Context {
	private String content;

	private List<Expression> list = new ArrayList<Expression>();

	public void setContent(String content) {
		this.content = content;
	}

	public String getContent() {
		return this.content;
	}

	public void add(Expression eps) {
		list.add(eps);
	}

	public List<Expression> getList() {
		return list;
	}

}
