package org.zhd.foundation.gof23.structure.adapter;

public class Adapter2 implements Targetable {
    private Source source;

    // 对象的适配
    public Adapter2(Source source) {
        super();
        this.source = source;
    }

    @Override
    public void method2() {
        System.out.println("this is method2 in Adapter1");
    }

    @Override
    public void method1() {
        source.method1();
    }
}
