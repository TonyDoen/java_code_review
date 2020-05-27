package org.zhd.foundation.gof23.creation.factoryMethod;

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
