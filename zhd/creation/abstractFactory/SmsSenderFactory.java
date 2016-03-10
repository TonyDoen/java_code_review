package com.zhd.creation.abstractFactory;

public class SmsSenderFactory implements Provider
{
    @Override
    public Sender produce()
    {
        return new SmsSender();
    }
}
