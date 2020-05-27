package org.zhd.foundation.gof23.creation.builder;

public class TestBuilder
{
    
    public static void main(String[] args)
    {
        Builder br = new Builder();
        br.produceMailSender(2);
    }
    // 建造者模式，将很多功能集成到一个类里，类可以创造出比较复杂的东西
    // 工厂模式关注创建单个产品
    // 建造者模式关注创建符合对象（多个）
}
