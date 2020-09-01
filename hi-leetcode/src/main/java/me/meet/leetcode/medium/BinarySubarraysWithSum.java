package me.meet.leetcode.medium;

import java.util.HashMap;
import java.util.Map;

public final class BinarySubarraysWithSum {
    private BinarySubarraysWithSum() {
    }

    /**
     * 930. Binary Subarrays With Sum
     * In an array `A` of `0`s and `1`s, how many non-empty subarrays have sum `S`?
     *
     * Example 1:
     * Input: A = [1,0,1,0,1], S = 2
     * Output: 4
     *
     * Explanation:
     * The 4 subarrays are bolded below:
     * [|1,0,1|,0,1]   =>  2 = 1+0+1
     * [|1,0,1,0|,1]   =>  2 = 1+0+1+0
     * [1,|0,1,0,1|]   =>  2 = 0+1+0+1
     * [1,0,|1,0,1|]   =>  2 = 1+0+1
     *
     * Note:
     * A.length <= 30000
     * 0 <= S <= A.length
     * A[i] is either 0 or 1.
     */
    /**
     * url: https://www.cnblogs.com/grandyang/p/12245317.html
     * 题目：二元子数组之和
     * 思路：
     * 这道题给了我们一个只由0和1组成的数组A，还有一个整数S，问数组A中有多少个子数组使得其和正好为S。博主最先没看清题意，以为是按二进制数算的，但是看了例子之后才发现，其实只是单纯的求和而已。那么马上就想着应该是要建立累加和数组的，然后遍历所有的子数组之和，但是这个遍历的过程还是平方级的复杂度，这道题的 OJ 卡的比较严格，只放行线性的时间复杂度。所以这种遍历方式是不行的，但仍需要利用累加和的思路，具体的方法是在遍历的过程中使用一个变量 curSum 来记录当前的累加和，同时使用一个 HashMap，用来映射某个累加出现的次数，初始化需要放入 {0,1} 这个映射对儿，后面会讲解原因。在遍历数组的A的时候，对于每个遇到 的数字 num，都加入累加和 curSum 中，然后看若 curSum-S 这个数有映射值的话，那么说明就存在 m[curSum-S] 个符合题意的子数组，应该加入到结果 res 中，假如 curSum 正好等于S，即 curSum-S=0 的时候，此时说明从开头到当前位置正好是符合题目要求的子数组，现在明白刚开始为啥要加入 {0,1} 这个映射对儿了吧，就是为了处理这种情况。然后此时 curSum 的映射值自增1即可。其实这道题的解法思路跟之前那道 [Contiguous Array](https://www.cnblogs.com/grandyang/p/6529857.html) 是一样的，那道题是让找0和1个数相同的子数组，这里让找和为S的子数组，都可以用一个套路来解题
     */
    static int numSubarraysWithSum(int[] a, int s) {
        Map<Integer, Integer> mp = new HashMap<>();
        mp.put(0, 1);

        int res = 0, curSum = 0;
        for (int num : a) {
            curSum += num;
            res += mp.getOrDefault((curSum - s), 0);
            mp.put(curSum, (mp.getOrDefault(curSum, 0) + 1));
        }
        return res;
    }

    /**
     * 思路：
     * 我们也可以使用滑动窗口 Sliding Window 来做，也是线性的时间复杂度，其实还是利用到了累计和的思想，不过这个累加和不是从开头到当前位置之和，而是这个滑动窗口内数字之和，这 make sense 吧，因为只要这个滑动窗口内数字之和正好等于S了，即是符合题意的一个子数组。遍历数组A，将当前数字加入 sum 中，然后看假如此时 sum 大于S了，则要进行收缩窗口操作，左边界 left 右移，并且 sum 要减去这个移出窗口的数字，当循环退出后，假如此时 sum 小于S了，说明当前没有子数组之和正好等于S，若 sum 等于S了，则结果 res 自增1。此时还需要考虑一种情况，就是当窗口左边有连续0的时候，因为0并不影响 sum，但是却要算作不同的子数组，所以要统计左起连续0的个数，并且加到结果 res 中即可
     */
    static int numSubarraysWithSum1(int[] a, int s) {
        int res = 0, sum = 0, left = 0, n = a.length;
        for (int i = 0; i < n; i++) {
            sum += a[i];
            while (left < i && sum > s) {
                sum -= a[left++];
            }
            if (sum < s) {
                continue;
            }
            if (sum == s) {
                res++;
            }
            for (int j = left; j < i && 0 == a[j]; j++) {
                res++;
            }
        }
        return res;
    }

    private static void testNumSubarraysWithSum() {
        int[] a = new int[]{1, 0, 1, 0, 1};
        int s = 2;
        int res = numSubarraysWithSum(a, s);
        System.out.println(res);

        int res1 = numSubarraysWithSum1(a, s);
        System.out.println(res1);
    }

    public static void main(String[] args) {
        testNumSubarraysWithSum();
    }
}
