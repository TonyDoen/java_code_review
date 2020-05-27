package org.zhd.foundation.gof23.creation.abstractFactory;

public class SmsSenderFactory implements Provider {
    @Override
    public Sender produce() {
        return new SmsSender();
    }
}
