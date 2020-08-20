package me.meet.leetcode.medium;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class BeautifulArray {
    private BeautifulArray() {
    }
    /**
     * 932. Beautiful Array
     * For some fixed `N`, an array `A` is *beautiful* if it is a permutation of the integers `1, 2, ..., N`, such that:
     * For every i < j, there is no k with i < k < j such that A[k] * 2 = A[i] + A[j].
     * Given N, return any beautiful array A.  (It is guaranteed that one exists.)
     *
     * Example 1:
     * Input: 4
     * Output: [2,1,4,3]
     *
     * Example 2:
     * Input: 5
     * Output: [3,1,2,5,4]
     *
     * Note:
     * 1 <= N <= 1000
     */
    /**
     * 漂亮数组
     * 对于某些固定的 N，如果数组 A 是整数 1, 2, ..., N 组成的排列，使得：
     * 对于每个 i < j，都不存在 k 满足 i < k < j 使得 A[k] * 2 = A[i] + A[j]。
     * 那么数组 A 是漂亮数组。
     * 给定 N，返回任意漂亮数组 A（保证存在一个）。
     *
     * 示例 1：
     * 输入：4
     * 输出：[2,1,4,3]
     *
     * 示例 2：
     * 输入：5
     * 输出：[3,1,2,5,4]
     *
     * 提示：
     * 1 <= N <= 1000
     */
    /**
     * 思路：
     * 这道题定义了一种漂亮数组，说的是在任意两个数字之间，不存在一个正好是这两个数之和的一半的数字，现在让返回长度是N的一个漂亮数组，注意这里长度是N的漂亮数组一定是由1到N之间的数字组成的，每个数字都会出现，而且一定存在这样的漂亮数组。博主刚开始时是没什么头绪的，想着总不会是要遍历所有的排列情况，然后对每个情况去验证是否是漂亮数组的吧，想想都觉得很不高效，于是就放弃挣扎，直接逛论坛了。不出意外，最高票的还是你李哥，居然提出了逆天的线性时间的解法，献上膝盖，怪不得有网友直接要 Venmo 号立马打钱，LOL～ 这道题给了提示说是要用分治法来做，但是怎么分是这道题的精髓，若只是普通的对半分，那么在 merge 的时候还是要验证是否是漂亮数组，麻烦！
     * 但若按奇偶来分的话，那就非常的叼了，因为奇数加偶数等于奇数，就不会是任何一个数字的2倍了。这就是奇偶分堆的好处，这时任意两个数字肯定不能分别从奇偶堆里取了，那可能你会问，奇数堆会不会有三个奇数打破这个规则呢？
     * 只要这个奇数堆是从一个漂亮数组按固定的规则变化而来的，就能保证一定也是漂亮数组，因为对于任意一个漂亮数组，若对每个数字都加上一个相同的数字，或者都乘上一个相同的数字，则一定还是漂亮数组，因为数字的之间的内在关系并没有改变。
     * 明白了上面这些，基本就可以解题了，假设此时已经有了一个长度为n的漂亮数组，如何将其扩大呢？可以将其中每个数字都乘以2并加1，就都会变成奇数，并且这个奇数数组还是漂亮的，然后再将每个数字都乘以2，那么都会变成偶数，并且这个偶数数组还是漂亮的，两个数组拼接起来，就会得到一个长度为 2n 的漂亮数组。
     * 就是这种思路，可以从1开始，1本身就是一个漂亮数组，然后将其扩大，注意这里要卡一个N，不能让扩大的数组长度超过N，只要在变为奇数和偶数时加个判定就行了，将不大于N的数组加入到新的数组中，
     */
    static int[] beautifulArray(int n) {
        List<Integer> res = new ArrayList<>();
        res.add(1);
        for (; res.size() < n; ) {
            List<Integer> tmp = new ArrayList<>();
            for (Integer i : res) {
                int num = i * 2 - 1;
                if (num <= n) {
                    tmp.add(num);
                }
            }
            for (Integer i : res) {
                int num = i * 2;
                if (num <= n) {
                    tmp.add(num);
                }
            }
            res = tmp;
        }
        return res.stream().mapToInt(Integer::valueOf).toArray();
    }

    static int[] beautifulArray1(int n) {
        return f(n);
    }

    final static Map<Integer, int[]> memo = new HashMap<>();

    private static int[] f(int n) {
        if (memo.containsKey(n)) {
            return memo.get(n);
        }
        int[] ans = new int[n];
        if (1 == n) {
            ans[0] = 1;
        } else {
            int t = 0;
            for (int x : f((n + 1) / 2)) { // odds
                ans[t++] = 2 * x - 1;
            }
            for (int x : f(n / 2)) { // evens
                ans[t++] = 2 * x;
            }
        }
        memo.put(n, ans);
        return ans;
    }

    private static void testBeautifulArray() {
        int n = 5;
        int[] ans1 = beautifulArray(n);
        for (int i : ans1) {
            System.out.print(i);
        }
        System.out.println();

        int[] ans2 = beautifulArray1(n);
        for (int i : ans2) {
            System.out.print(i);
        }
    }

    public static void main(String[] args) {
        testBeautifulArray();
    }
}
