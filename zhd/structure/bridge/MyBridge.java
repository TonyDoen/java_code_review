package com.zhd.structure.bridge;

public class MyBridge extends Bridge
{
    public void method()
    {
        super.getSource().method();
    }
}
