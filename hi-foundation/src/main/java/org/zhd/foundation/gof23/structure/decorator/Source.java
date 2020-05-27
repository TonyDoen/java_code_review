package org.zhd.foundation.gof23.structure.decorator;

public class Source implements Sourceable {

    @Override
    public void method() {
        System.out.println("the original method.");
    }
}
