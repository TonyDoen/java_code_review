package org.zhd.foundation.gof23.action.chain;

public class TestMyHandler {

    public static void main(String[] args) {
        MyHandler h1 = new MyHandler("h1");
        MyHandler h2 = new MyHandler("h2");
        MyHandler h3 = new MyHandler("h3");

        h1.setHandler(h2);
        h2.setHandler(h3);

        h1.operator();
    }
    // 责任链模式
    // 有多个对象，每个对象有下一个对象的引用，这样形成一条链
    // 请求在这条链上传递，直到某个对象决定处理该请求，但发出者并不清楚那个对象会处理请求
    // 责任链模式可以实现，在隐瞒客户端的情况下，对系统进行动态调整

    // 链接上的请求可以是一条链，可以是一个树，或者环，模式本身不约束，
    // 同一时刻，命令只允许由一个对象传给另一个对象，不允许传给多个对象
}
