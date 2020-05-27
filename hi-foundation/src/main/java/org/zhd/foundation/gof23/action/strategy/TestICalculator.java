package org.zhd.foundation.gof23.action.strategy;

public class TestICalculator {

    public static void main(String[] args) {
        String exp = "1+1";
        ICalculator cal = new Plus();
        int result = cal.calculate(exp);
        System.out.println(result);

        // String[] tmp = "1*1*1".split("\\*");
        // System.out.println();
    }
}
