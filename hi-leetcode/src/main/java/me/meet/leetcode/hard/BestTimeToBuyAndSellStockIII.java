package me.meet.leetcode.hard;

public final class BestTimeToBuyAndSellStockIII {
    private BestTimeToBuyAndSellStockIII() {
    }

    /**
     * Say you have an array for which the i th element
     * is the price of a given stock on day i.
     *
     * Design an algorithm to find the maximum profit.
     * You may complete at most two transactions.
     *
     * Note:
     * You may not engage in multiple transactions at the same time
     * (ie, you must sell the stock before you buy again).
     */
    /**
     * 题意：（与上面的区别是只能完成 2 笔交易）
     * 给定一个数组，它的第 i 个元素是一支给定的股票在第 i 天的价格。
     * 设计一个算法来计算你所能获取的最大利润。你最多可以完成 2 笔交易。
     * 注意: 你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）。
     *
     * 思路：
     * 思路：(贪心算法)
     * 1、用 sell1 表示初始时的利润为0，
     * buy1 表示最便宜股票的价格，
     * 用 sell2 表示交易两次的利润，
     * buy2 表示第一次售出股票后，再买入后面某一天股票后的收益
     * 2、从左到右遍历，buy1表示前些天买入最便宜股票的股价
     * sell1保存前些天买入最便宜股票后再在股票最高时卖出股票的最大利润
     * 3、buy2表示第一次售出股票后，再买入后面某一天股票后的净收益
     * sell2表示二次买卖或者一次买卖的最大收益
     * (buy2之前的净收益+curPrice今天卖出股票后收益)
     */
    static int getBestTimeToBuyAndSellStock2(int[] prices) {
        if (null == prices || prices.length < 2) {
            return 0;
        }

        int buy1 = Integer.MIN_VALUE, sell1 = 0, buy2 = Integer.MIN_VALUE, sell2 = 0;
        for (int curPrice : prices) {
            // 最便宜的股票价格
            buy1 = Math.max(buy1, -curPrice);
            // 一次交易的最大收益
            sell1 = Math.max(sell1, curPrice + buy1);
            // 之前天先进行第一次交易后，在买入今天股票后的净利润
            buy2 = Math.max(buy2, sell1 - curPrice);
            // 二次交易的收益(卖出今天股票后的收益)
            sell2 = Math.max(sell2, curPrice + buy2);
        }
        return sell2;
    }

    private static void testGetBestTimeToBuyAndSellStock2() {
        int[] arr = {1, 2, 5, 4, 5};
        int res = getBestTimeToBuyAndSellStock2(arr);
        System.out.println(res);
    }

    public static void main(String[] args) {
        testGetBestTimeToBuyAndSellStock2();
    }
}
