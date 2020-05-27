package org.zhd.foundation.gof23.creation.singleton;

public class SingletonR
{
    public static void main(String[] args)
    {
        Singleton8.INSTANCE.doSomething("hello");
    }
}

class Singleton6
{
    // 饿汉式，类加载时初始化，线程安全
    private static final Singleton6 instance = new Singleton6();
    
    private Singleton6()
    {
    }
    
    public static Singleton6 getInstance()
    {
        return instance;
    }
    
    // 问题：没有调用getIntance(), 单例也会在加载类后被初始化；
    // 在Singleton6 创建依赖参数或配置文件时，getInstance()调用前 必须通过某种方法 提前设置参数，否则，不能使用
}

class Singleton7
{
    // 饿汉式，单例推荐版本
    private static class Singleton7Holder
    {
        private static final Singleton7 instance = new Singleton7();
    }
    
    private Singleton7()
    {
    }
    
    public static final Singleton7 getInstance()
    {
        return Singleton7Holder.instance;
    }
}

enum Singleton8
{
    INSTANCE;
    
    public void doSomething(String value)
    {
        System.out.println("this is Singleton8 using enum, value = " + value);
    }
}

// 单例的5种写法：懒汉，饿汉，双重检验锁，静态内部类，枚举
