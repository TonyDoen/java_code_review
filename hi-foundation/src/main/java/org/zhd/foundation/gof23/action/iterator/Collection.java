package org.zhd.foundation.gof23.action.iterator;

public interface Collection
{
    public Iterator iterator();
    
    // 获取集合元素
    public Object get(int i);
    
    // 获取集合大小
    public int size();
}
