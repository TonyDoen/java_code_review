package org.zhd.foundation.gof23.structure.facade;

public class TestComputer
{
    public static void main(String[] args)
    {
        Computer computer = new Computer();
        computer.startup();
        computer.shutdown();
    }
    // 外观模式
    // 解决类于类之家 的依赖关系，外观模式将类和类之间的关系放到了一个Facade 类中，降低类和类之间的耦合度
    // 该模式没有涉及接口，
    // 类比于 spring 可以将类和类之间的关系配置到配置文件
    
    // 若没有computer 类 cpu, memory, disk 之间将互相持有实例，产生关系，造成严重的依赖，修改一个类，会需要修改其他类。
    // 有了computer 类， 三者的关系被放到了computer 类里，有解耦和的作用，即是外观模式
}
