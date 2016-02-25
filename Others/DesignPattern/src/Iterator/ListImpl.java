package Iterator;

public class ListImpl implements List{
	private Object[] list;
    
    private int index;
    
    private int size;
    
    public ListImpl() {
        index = 0;
        size = 0;
        list = new Object[100];
    }
    
    public Iterator iterator() {
        return new IteratorImpl(this);
    }
    
    public Object get(int index) {
        return list[index];
    }
    
    public int getSize() {
        return this.size;
    }
    
    public void add(Object obj) {
        list[index++] = obj;
        size++;
    }
}
