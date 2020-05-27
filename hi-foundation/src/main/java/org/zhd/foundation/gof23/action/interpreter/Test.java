package org.zhd.foundation.gof23.action.interpreter;

public class Test
{
    
    public static void main(String[] args)
    {
        int result = new Minus().interpret(new Context(9, 2));
        System.out.println(result);
    }
}
// 解释器模式
// 主要应用在OOP 开发中的编译器的开发。适用面较窄。