package org.zhd.foundation.gof23.creation.abstractFactory;

public class MailSenderFactory implements Provider {
    @Override
    public Sender produce() {
        return new MailSender();
    }
}
