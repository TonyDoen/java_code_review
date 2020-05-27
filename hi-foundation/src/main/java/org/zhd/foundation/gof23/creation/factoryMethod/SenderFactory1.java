package org.zhd.foundation.gof23.creation.factoryMethod;

public class SenderFactory1 {
    public Sender produce(String type) {
        if ("mail".equals(type)) {
            return new MailSender();
        } else if ("sms".equals(type)) {
            return new SmsSender();
        } else {
            return null;
        }
    }
}
