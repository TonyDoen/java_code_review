package org.zhd.foundation.gof23.structure.bridge;

public class TestBridge extends Bridge {
    public static void main(String[] args) {
        Bridge bridge = new MyBridge();

        // 调用source1
        Sourceable s1 = new Source1();
        bridge.setSource(s1);
        bridge.method();

        Sourceable s2 = new Source2();
        bridge.setSource(s2);
        bridge.method();
    }
    // 桥接模式
    // 通过对Bridge类的调用，实现接口Sourceable的实现类 Source1, Source2的调用
}
