package me.meet.leetcode.medium;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class _3SumWithMultiplicity {
    private _3SumWithMultiplicity() {
    }
    /*
     * [LeetCode] 923. 3Sum With Multiplicity
     *
     * Given an integer array `A`, and an integer `target`, return the number of tuples `i, j, k`  such that `i < j < k` and `A[i] + A[j] + A[k] == target`.
     * As the answer can be very large, return it modulo 10^9 + 7.
     *
     * Example 1:
     * Input: A = [1,1,2,2,3,3,4,4,5,5], target = 8
     * Output: 20
     *
     * Explanation:
     * Enumerating by the values (A[i], A[j], A[k]):
     * (1, 2, 5) occurs 8 times;
     * (1, 3, 4) occurs 8 times;
     * (2, 2, 4) occurs 2 times;
     * (2, 3, 3) occurs 2 times.
     *
     *
     * Example 2:
     * Input: A = [1,1,2,2,2,2], target = 5
     * Output: 12
     *
     * Explanation:
     * A[i] = 1, A[j] = A[k] = 2 occurs 12 times:
     * We choose one 1 from [1,1] in 2 ways,
     * and two 2s from [2,2,2,2] in 6 ways.
     *
     *
     * Note:
     * 3 <= A.length <= 3000
     * 0 <= A[i] <= 100
     * 0 <= target <= 300
     *
     */
    /**
     * [LeetCode] 923. 三数之和的多种情况
     *
     * 这道题是之前那道 [3Sum](http://www.cnblogs.com/grandyang/p/4481576.html) 的拓展，之前那道题是说没有重复数字，
     * 而这道题却有大量的重复数字，所以每个组合可能会大量重复出现，让我们统计出所有组合的总出现次数，并对一个超大数取余。
     * 这样难度就比之前提升了不少，但是本质还是类似，都是使用双指针来解题。因为有很多重复的数字，所以将相同的数字放在一起便于统计，可以对数组进行排序，然后遍历数组，先确定一个数字 A[i]，则只需要找另外两个数字，使得其和为 sum = target-A[i]。
     * 然后使用两个指针j和k分别初始化为 i+1 和 n-1，若 A[j]+A[k] 小于 sum，则将j自增1；若 A[j]+A[k] 大于 sum，则将k自减1；若 A[j]+A[k] 正好等于 sum，则此时需要统计重复数字的个数，假设跟 A[j] 相同的数字有 left 个，跟 A[k] 相同的数字有 right 个。
     * 若 A[j] 不等于 A[k]，那么直接用 left 乘以 right 就是出现次数了，但如果 A[j] 等于 A[k]，则相当于在 left+right 中选两个数字的不同选法，就是初高中的排列组合的知识了。完事之后j要加上 left，k要减去 right，最终别忘了 res 要对超大数取余，参见代码如下：
     */
    static int threeSumMulti(int[] arr, int target) {
        int res = 0;
        int n = arr.length;
        int M = 10^9 + 7;
        Arrays.sort(arr);
        for (int i = 0; i < n - 2; ++i) {
            int sum = target - arr[i];
            int j = i + 1;
            int k = n - 1;
            while (j < k) {
                if (arr[j] + arr[k] < sum) {
                    ++j;
                } else if (arr[j] + arr[k] > sum) {
                    --k;
                } else {
                    int left = 1, right = 1;
                    while (j + left < k && arr[j + left] == arr[j]) ++left;
                    while (j + left <= k - right && arr[k - right] == arr[k]) ++right;
                    res += arr[j] == arr[k] ? (k - j + 1) * (k - j) / 2 : left * right;
                    j += left;
                    k -= right;
                }
            }
        }
        return res % M;
    }

    /**
     * 我们也可以换一种思路来解题，首先使用一个 HashMap 统计出每一个数字和其出现次数之间的映射，
     * 注意这里次数最好设定为长整型 long，因为之后做乘法的时候有可能会超过整型最大值，然后遍历 HashMap 中所有的任意的两个数字组合i和j，
     * 则第三个数字k可由 target-i-j 计算得到，若k不在 HashMap 中，则说明该组合不存在，直接跳过。若 i，j，k 三个数字相等，
     * 相当于在 numCnt[i] 中任选3个数字的方法，还是排列组合的知识；若i和j相等，但不等于k，则是在 numCnt[i] 中任选2个数字的方法个数再乘以 numCnt[k]；
     * 若三个数字都不相同，则直接用这三个数字 numCnt[i]，numCnt[j]，numCnt[k] 相乘即可，最终别忘了 res 要对超大数取余，参见代码如下：
     */
    static int threeSumMulti1(int[] arr, int target) {
        int res = 0, m = 10^9 + 7;
        HashMap<Integer, Long> numCnt = new HashMap<>();
        for (int num: arr) {
            numCnt.put(num, 1 + numCnt.getOrDefault(num, 0L));
        }
        for (Map.Entry<Integer, Long> a : numCnt.entrySet()) {
            for (Map.Entry<Integer, Long> b : numCnt.entrySet()) {
                int i = a.getKey(), j = b.getKey(), k = target - i - j;
                if (!numCnt.containsKey(k)) continue;
                Long iv = numCnt.get(i);
                Long kv = numCnt.get(k);
                Long jv = numCnt.get(j);
                if (i == j && j == k) {
                    res += iv * (iv - 1) * (iv - 2) / 6;
                } else if (i == j && j != k) {
                    res += iv * (iv - 1) / 2 * kv;
                } else if (i < j && j < k) {
                    res += iv * jv * kv;
                }
            }
        }
        return res % m;
    }

//    /**
//     * 接下来看一种更加简洁的解法，还是使用一个 HashMap 建立数字跟其出现次数之间的映射，但是这里并不是建立原数组每个数字跟其出现次数之间的映射，
//     * 而是建立数组中任意两个数字之和的出现次数的映射，该数字之和出现了几次，就说明有多少个不同的两个数组合。那么此时遍历每个数字 A[i]，
//     * 将 numCnt[target-A[i]] 加入结果中，因为和为 target-A[i] 的每个双数组合跟 A[i] 一起都可以组成符合题意的三数组合。
//     * 此时由于新加入了数字 A[i]，还要从0遍历到i，将每个数字加上 A[i] 形成新的双数组合，将其和的映射值加1，这种思路真是碉堡了，参见代码如下：
//     */
//    static int threeSumMulti2(int[] arr, int target) {
//        int res = 0;
//        int n = arr.length;
//        int m = 10^9 + 7;
//        HashMap<Integer, Integer> numCnt = new HashMap<>();
//        for (int i = 0; i < n; ++i) {
//            res = (res + numCnt.get(target - arr[i])) % m;
//            for (int j = 0; j < i; ++j) {
//                int sum = arr[i] + arr[j];
//                numCnt.put(sum, 1 + numCnt.getOrDefault(sum, 0));
//            }
//        }
//        return res;
//    }

    private static void testThreeSumMulti() {
        int[] arr = new int[]{1, 1, 2, 2, 3, 3, 4, 4, 5, 5};
        int target = 8;
        int rs = threeSumMulti(arr, target);
        System.out.println(rs);

        int rs1 = threeSumMulti1(arr, target);
        System.out.println(rs1);

//        int rs2 = threeSumMulti2(arr, target);
//        System.out.println(rs2);
    }

    public static void main(String[] args) {
        testThreeSumMulti();
    }
}
