package org.zhd.foundation.gof23.creation.factoryMethod;

public class MailSender implements Sender
{
    
    @Override
    public void send()
    {
        System.out.println("this is MailSender.");
    }
}
