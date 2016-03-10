package com.zhd.creation.factoryMethod;

public class SenderFactory2
{
    public Sender produceMailSender()
    {
        return new MailSender();
    }
    
    public Sender produceSmsSender()
    {
        return new SmsSender();
    }
}
