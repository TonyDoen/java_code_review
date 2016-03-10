package com.zhd.creation.singleton;

public class SingletonS
{
}

class Singleton1
{
    // 懒汉式，线程不安全
    private static Singleton1 instance;
    
    private Singleton1()
    {
    }
    
    public static Singleton1 getInstance()
    {
        if(null == instance)
            instance = new Singleton1();
        return instance;
    }
}

class Singleton2
{
    // 懒汉式，线程安全
    private static Singleton2 instance;
    
    private Singleton2()
    {
    }
    
    public static synchronized Singleton2 getInstance()
    {
        if(null == instance)
            instance = new Singleton2();
        return instance;
    }
}

class Singleton3
{
    // 懒汉式，线程安全
    private static Singleton3 instance;
    
    private Singleton3()
    {
    }
    
    public static Singleton3 getInstance()
    {
        synchronized(Singleton3.class)
        {
            if(null == instance)
                instance = new Singleton3();
        }
        return instance;
    }
}

// Singleton2 和 Singleton3 等价，
// 创建动作只有一次，后面的动作全是读取成员变量，读操作是不需要线程同步，
// Singleton2 和 Singleton3 的写法会让 读操作也是同步，影响性能

class Singleton4
{
    private static Singleton4 instance;
    
    private Singleton4()
    {
    }
    
    // 双重检验锁
    public static Singleton4 getInstance()
    {
        if(null == instance)
        {
            synchronized(Singleton4.class)
            {
                if(null == instance)
                {
                    instance = new Singleton4(); // maybe error
                }
            }
        }
        return instance;
    }
    // instance = new Singleton4(); 并非原子操作
    // jvm 大概分3步操作
    // (1)给instance 分配内存
    // (2)调用Singleton4 的构造函数初始化成员变量
    // (3)将instance 对象指向分配的内存空间(这一步执行，intance 就为 非null)
    
    // jvm 及时编译器存在指令重排序的优化， 执行顺序1->2->3 或者 1->3->2
    // 如果 线程1执行完1->3, 线程2抢占到cpu 则 instance != null 返回instance，抛错
}

class Singleton5
{
    private static volatile Singleton5 instance;
    
    private Singleton5()
    {
    }
    
    // 双重检验锁
    public static Singleton5 getInstance()
    {
        if(null == instance)
        {
            synchronized(Singleton5.class)
            {
                if(null == instance)
                {
                    instance = new Singleton5(); // maybe error
                }
            }
        }
        return instance;
    }
    
    // volatile 会禁止指令重排优化 jvm 及时编译器存在指令 执行顺序1->2->3，版本正确
    // java 5 以前的版本JMM(java 内存模型)存在缺陷，volatile 变量前后的代码有指令重排问题，Java 5之前此版本依然错误
}
