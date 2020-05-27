package org.zhd.foundation.gof23.structure.proxy;

public class TestProxy {

    public static void main(String[] args) {
        Sourceable source = new Proxy();
        source.method();
    }
    // 代理模式
    // 若已有的方法在使用的时候需要对原有的方法进行改进，
    // 1.修改原有的方法来适应，这违反"开闭原则"，对扩展开放，对修改关闭
    // 2.采用代理类调用原有的方法，且对产生的结果进行监控
    // 使用代理模式，可以将功能划分的更加清晰，有助于后期维护
}
