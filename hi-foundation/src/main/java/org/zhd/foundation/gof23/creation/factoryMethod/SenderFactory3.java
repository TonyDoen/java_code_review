package org.zhd.foundation.gof23.creation.factoryMethod;

public class SenderFactory3
{
    public static Sender produceMailSender()
    {
        return new MailSender();
    }
    
    public static Sender produceSmsSender()
    {
        return new SmsSender();
    }
}
