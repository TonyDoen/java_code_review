package org.zhd.foundation.algorithm;

public class Greedy
{
    private class Box
    {
        int no;
        int size;
        Box next;
    }
    
    // 找零方案
    // 人民币：100, 50, 10, 5, 2, 1, 0.5, 0.1
    public static int exchange(double n)
    {
        int ex = (int) (n * 100);
        int[] part = new int[]{100 * 100, 50 * 100, 10 * 100, 5 * 100, 2 * 100, 1 * 100, (int) (0.5 * 100), (int) (0.1 * 100)};
        int[] flag = new int[part.length];
        int i = 0;
        for(; i < part.length; i++)
            if(ex > part[i])
                break;
        while(ex > 0 && i < part.length)
        {
            if(ex >= part[i])
            {
                ex -= part[i];
                flag[i]++;
            }
            else if(ex < part[part.length - 1] && ex > 0)
            {
                flag[part.length - 1]++;
                break;
            }
            else
                i++;
        }
        for(int j = 0; j < part.length; j++)
            System.out.println(((double) part[j] / 100.0) + " : " + (flag[j]));
        return 0;
    }
    
    public static void main(String[] args)
    {
        exchange(99.5);
    }
}

// 贪心算法
// 从问题的某个初始解出发，逐步逼近给定的目标，以便求出更好的解，当达到算法中某一步不能继续时，就停止算法，给出近似解
// 贪心算法不是对所有问题都能得到整体最优解
// 1.不能保证最后的解是最优的
// 2.不能用来求最大或者最小的问题
// 3.只能求满足某些约束条件的可行解的范围

// 贪心算法基本思路
// 1.简历数学模型来描述问题
// 2.求解问题分成若干子问题
// 3.对每一子问题求解，得到子问题的局部最优解
// 4.把子问题的局部最优解合并成原来问题的一个解

// 贪心算法基本过程
// 1.从问题的一个初始解出发
// 2.while能向给定总目标前进一步
// 3.求出可行解的一个解元素
// 4.所有解元素组合成问题的一个可行解
