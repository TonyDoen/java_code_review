package com.zhd.action.command;

public class TestInvoker
{
    public static void main(String[] args)
    {
        Receiver receiver = new Receiver();
        Command cmd = new MyCommand(receiver);
        Invoker invoker = new Invoker(cmd);
        invoker.action();
    }
}

// 命令模式
// 命令模式的目的是达到 发出者（司令）和执行者（士兵）之间的解耦，实现请求和执行的分开
// Structs 其实就是一种将请求和呈现分离的技术

// Invoker是调用者，Receiver是被调用者，MyCommand是命令，实现Command接口，持有接收者对象
// 司令 命令 士兵 做某事
