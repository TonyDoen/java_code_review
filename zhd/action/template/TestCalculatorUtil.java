package com.zhd.action.template;

public class TestCalculatorUtil
{
    
    public static void main(String[] args)
    {
        String exp = "1+1";
        CalculatorUtil cal = new Plus();
        int result = cal.calculate(exp, "\\+");
        System.out.println(result);
    }
    // 模板方法
    // 一个抽象类中，有一个主方法，再定义1...n个方法，可以是抽象的，也可以是实际方法，
    // 定义一个类继承抽象方法，重写抽象方法，通过调用抽象类，实现对之类的调用，
}
