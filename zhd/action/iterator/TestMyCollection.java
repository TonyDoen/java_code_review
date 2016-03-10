package com.zhd.action.iterator;

public class TestMyCollection
{
    
    public static void main(String[] args)
    {
        Collection collection = new MyCollection();
        Iterator it = collection.iterator();
        
        while(it.hasNext())
        {
            System.out.println(it.next());
        }
    }
}
