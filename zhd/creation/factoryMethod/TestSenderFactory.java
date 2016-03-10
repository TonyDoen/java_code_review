package com.zhd.creation.factoryMethod;

import com.zhd.creation.abstractFactory.MailSenderFactory;
import com.zhd.creation.abstractFactory.Provider;

public class TestSenderFactory
{
    public static void main(String[] args)
    {
        Sender sender = null;
        
        // 简单工厂模式
        SenderFactory1 sf1 = new SenderFactory1();
        sender = sf1.produce("sms");
        sender.send();
        
        // 多个工厂模式
        SenderFactory2 sf2 = new SenderFactory2();
        sender = sf2.produceSmsSender();
        sender.send();
        
        // 静态工厂方法模式(最为常用)
        sender = SenderFactory3.produceSmsSender();
        sender.send();
        
        // 抽象工厂模式
        // 好处是，想添加一个功能，
        // 只需要做实现Sender接口的实现类，同时做一个实现Provider接口的工厂类，
        // 不用改现有的代码
        Provider pr = new MailSenderFactory();
        com.zhd.creation.abstractFactory.Sender tmp = pr.produce();
        tmp.send();
    }
    // 总结
    // 工厂模式适合 出现大量产品需要创建，并且具有共同的接口
    // 工厂模式的问题 类的创建依赖工厂类，即拓展程序需要对工厂类修改（违背闭包原则）
    
    // 抽象工厂模式
    // 好处是，想添加一个功能，
    // 只需要做实现Sender接口的实现类，同时做一个实现Provider接口的工厂类，
    // 不用改现有的代码，规避了工厂模式的问题
}
