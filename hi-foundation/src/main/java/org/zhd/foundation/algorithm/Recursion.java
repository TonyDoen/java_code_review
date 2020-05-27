package org.zhd.foundation.algorithm;

public class Recursion
{
    // 递推
    // 菲波那锲，又称兔子数列
    // 1, 1, 2, 3, 5, 8, 13, ...
    // 兔子出生2个月后有繁殖能力，一月份：1对兔子，二月份：2对兔子，三月份：3对兔子，四月份：5对兔子
    public static void fibonacci()
    {
        long[] rabbits = new long[13];
        rabbits[0] = 1;
        rabbits[1] = 1;
        for(int i = 2; i < 13; i++)
        {
            rabbits[i] = rabbits[i - 1] + rabbits[i - 2]; // 顺推法
            System.out.println(i + " : " + rabbits[i] + " rabbits.");
        }
        
    }
    
    // 小明，月末取钱准备下个月，每月1000元生活费，4年大学准备一笔存款，整存零取，银行年利率0.0171，求最少存整存多少钱
    // 4*12 - 1 个月的存款*(1+0.0171/12) = 1000 + 0
    // 4*12 - 2 个月的存款*(1+0.0171/12) = 1000 + (4*12 - 1 个月的存款)
    // 4*12 - 3 个月的存款*(1+0.0171/12) = 1000 + (4*12 - 2 个月的存款)
    // ...
    public static void tuition()
    {
        double fee[] = new double[4 * 12 + 1];
        fee[4 * 12] = 0;// 最后一个月，取出1000元，剩下0元
        for(int i = 47; i > 0; i--)
        {
            fee[i] = (1000 + fee[i + 1]) / (1 + 0.0171 / 12);// 逆推法
            System.out.println(i + " 个月 月末本利共计 : " + fee[i]);
        }
    }
    
    // 汉诺塔
    // 寺院 第一根柱子有64个盘子，盘子从上往下越来越大，要求将盘子都移动到 第三根柱子，每次移动一个，且只能小盘子压着大盘子
    // 分析3个盘子的情况
    // 1. 把2个盘子 移动到 第二根 柱子，借助第三根 柱子: move(n-1, 1, 3, 2):借助3，把1移动到2 => (1->3, 1->2, 3->2)
    // 2. 把第一根柱子 的最后1个盘子 移动到 第三根柱子 : => (1->3)
    // 3. 把2个盘子 移动到 第三根 柱子，借助第一根 柱子: move(n-1, 2, 1, 3):借助1，把2移动到3 => (2->1, 2->3, 1->3)
    // ...
    // 分析4个盘子的情况
    // 1. 把3个盘子 移动到 第二根 柱子，借助第三根 柱子...
    // 2. 把第一根柱子 的最后1个盘子 移动到 第三根柱子 : => (1->3)...发现没，这一步是不变的
    // 3. 把3个盘子 移动到 第三根 柱子，借助第一根 柱子...
    // ...
    public static void hanoi(int n)
    {
        move(n, '1', '2', '3');
    }
    
    private static void move(int n, char first, char second, char third)
    {
        if(1 == n) // 2. 把第一根柱子 的最后1个盘子 移动到 第三根柱子
            System.out.println(first + "->" + third);
        else
        {
            move(n - 1, first, third, second);// 1. 把2个盘子 移动到 第二根 柱子，借助第三根 柱子
            System.out.println(first + "->" + third);
            move(n - 1, second, first, third); // 3. 把2个盘子 移动到 第三根 柱子，借助第一根 柱子
        }
        // System.out.println(first + "->" + third);//发现没，总是first->third,因为，你的最终目标是1->3,从第一个柱子移动到第三个柱子
    }
    
    // 阶乘
    // 0!=0, 1!=1, 2!=2, 3!=6=3*2*1, 4!=24=4*3*2*1
    public static void factorial(int un)
    {
        if(un < 0)
            System.out.println("error.");
        else if(un < 1)
            System.out.println(un + "! = 0");
        else
            System.out.println(un + "! = " + fact(un));
    }
    
    private static int fact(int n)
    {
        if(n <= 1)
            return 1;
        else
            return n * fact(n - 1);
    }
    
    public static void main(String[] args)
    {
        // fibonacci();
        // tuition();
        hanoi(4);
        factorial(-1);
        factorial(0);
        factorial(4);
    }
    
}

// 递推
// 通过已知条件，利用特定关系得到中间结论，推出结果
// 顺推法：从已知条件，逐步推出结论
// 逆推法：从已知结果，迭代方式推出结论

// 递归
// 1.递归过程一般通过函数 或 子过程 实现
// 2.递归在函数 或 子过程的内部，直接或间接调用了自己的算法
// 3.递归算法实际上， 把问题转化为规模缩小的同类子问题， 然后递归调用函数求解

// 1.递归过程中调用自身
// 2.使用递归必须有明确的递归结束条件，称为递归出口
// 3.递归算法通常简洁，但，效率低
// 4.递归调用，系统用栈来存储每一层的返回点与局部变量。递归次数过多，系统栈溢出，不提倡使用递归算法设计程序

// 递推 vs. 递归
// 递推：根据前面推出后面； 递归：大事化小；
// 如果同时可以使用递推和递归解决问题，使用递推，因为递推效率高于递归
