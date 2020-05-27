package org.zhd.foundation.gof23.action.strategy;

public class Plus extends CalculatorUtil implements ICalculator {

    @Override
    public int calculate(String exp) {
        int[] arr = split(exp, "\\+");
        return arr[0] + arr[1];
    }
}
