package com.zhd.algorithm;

public class Enumeration
{
    // 枚举：百钱买百鸡
    // 题干：公鸡5元，母鸡3元，小鸡3只1元，问100元，买100只鸡, 公鸡，母鸡，小鸡各多少只
    public static void _100money100chicken()
    {
        // cock + hen + chick = 100;
        // cock*5 + hen*3 + chick/3 = 100;
        int cock, hen, chick;
        for(cock = 0; cock < 100 / 5 + 1; cock++)
            for(hen = 0; hen < 100 / 3 + 1; hen++)
            {
                chick = 100 - cock - hen;
                if(0 == chick % 3 && 100 == 5 * cock + 3 * hen + chick / 3)
                    System.out.println("公鸡：" + cock + ", 母鸡：" + hen + ", 小鸡：" + chick);
            }
    }
    
    public static void main(String[] args)
    {
        _100money100chicken();
    }
}

// 枚举
// 1.选取考察对象
// 2.逐个考察所有可能性
// 3.选取判断标准

// 问题
// 1.选取考察对象不正确
// 2.没有逐个考察，不恰当的遗漏
// 没有考察所有，对解空间集确定失误
// 3.判断标准不正确
// 判断标准不全面
// 判读标准不高效，没有足够的剪枝

