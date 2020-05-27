package org.zhd.foundation.gof23.action.state;

public class State
{
    private String value;
    
    public String getValue()
    {
        return value;
    }
    
    public void setValue(String value)
    {
        this.value = value;
    }
    
    public void method1()
    {
        System.out.println("exec the 1st opt.");
    }
    
    public void method2()
    {
        System.out.println("exec the 2nd opt.");
    }
}
