package org.zhd.foundation.gof23.creation.factoryMethod;

public class SmsSender implements Sender {

    @Override
    public void send() {
        System.out.println("this is SmsSender.");
    }
}
