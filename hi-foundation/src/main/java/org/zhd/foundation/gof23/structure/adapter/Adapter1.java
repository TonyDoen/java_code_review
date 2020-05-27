package org.zhd.foundation.gof23.structure.adapter;

public class Adapter1 extends Source implements Targetable
{
    // 类的适配
    @Override
    public void method2()
    {
        System.out.println("this is method2 in Adapter1");
    }
}
