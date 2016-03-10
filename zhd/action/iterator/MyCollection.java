package com.zhd.action.iterator;

public class MyCollection implements Collection
{
    public String[] strs = {"A1", "A2", "A3", "A4", "A5", "A6",};
    
    @Override
    public Iterator iterator()
    {
        return new MyIterator(this);
    }
    
    @Override
    public Object get(int i)
    {
        return strs[i];
    }
    
    @Override
    public int size()
    {
        return strs.length;
    }
    
}
