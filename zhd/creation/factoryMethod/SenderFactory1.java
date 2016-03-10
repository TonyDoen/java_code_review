package com.zhd.creation.factoryMethod;

public class SenderFactory1
{
    public Sender produce(String type)
    {
        if("mail".equals(type))
        {
            return new MailSender();
        }
        else if("sms".equals(type))
        {
            return new SmsSender();
        }
        else
        {
            return null;
        }
    }
}
