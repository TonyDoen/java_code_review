package org.zhd.foundation.gof23.action.template;

public abstract class CalculatorUtil {
    public abstract int calculate(int num1, int num2);

    public final int calculate(String exp, String opt) {
        int[] arr = split(exp, opt);
        return calculate(arr[0], arr[1]);
    }

    public int[] split(String exp, String opt) {
        String[] arr = exp.split(opt);
        int[] arrInt = new int[2];
        arrInt[0] = Integer.parseInt(arr[0]);
        arrInt[1] = Integer.parseInt(arr[1]);
        return arrInt;
    }
}
