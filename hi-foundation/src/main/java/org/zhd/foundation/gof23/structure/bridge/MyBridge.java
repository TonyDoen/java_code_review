package org.zhd.foundation.gof23.structure.bridge;

public class MyBridge extends Bridge {
    public void method() {
        super.getSource().method();
    }
}
