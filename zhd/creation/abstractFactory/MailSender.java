package com.zhd.creation.abstractFactory;

public class MailSender implements Sender
{
    
    @Override
    public void send()
    {
        System.out.println("this is MailSender.");
    }
}
