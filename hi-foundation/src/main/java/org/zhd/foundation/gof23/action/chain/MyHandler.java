package org.zhd.foundation.gof23.action.chain;

public class MyHandler extends AbstractHandler implements Handler
{
    private String name;
    
    public MyHandler(String name)
    {
        this.name = name;
    }
    
    @Override
    public void operator()
    {
        System.out.println(name + " deal.");
        if(null != getHandler())
            getHandler().operator();
    }
}
