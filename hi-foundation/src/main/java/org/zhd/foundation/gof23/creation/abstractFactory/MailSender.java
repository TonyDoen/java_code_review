package org.zhd.foundation.gof23.creation.abstractFactory;

public class MailSender implements Sender {

    @Override
    public void send() {
        System.out.println("this is MailSender.");
    }
}
