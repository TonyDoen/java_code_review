package com.zhd.structure.decorator;

public class TestDecorator
{
    public static void main(String[] args)
    {
        Sourceable source = new Source();
        Sourceable obj = new Decorator(source);
        obj.method();
    }
    // 装饰器模式
    // 需要扩展一个类的功能
    // 动态的为一个对象增加功能，而且功能还能动态撤销，（继承不能做到，继承的功能是静态的，不能动态增删）
    // 产生过多相似的对象，不易排错
}
