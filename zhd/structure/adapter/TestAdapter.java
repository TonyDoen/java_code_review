package com.zhd.structure.adapter;

public class TestAdapter
{
    public static void main(String[] args)
    {
        Targetable target = null;
        // 类的适配
        target = new Adapter1();
        target.method1();
        target.method2();
        
        // 对象的适配
        target = new Adapter2(new Source());
        target.method1();
        target.method2();
        
    }
}
