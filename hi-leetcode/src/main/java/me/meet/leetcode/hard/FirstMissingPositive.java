package me.meet.leetcode.hard;

import java.util.HashSet;

public final class FirstMissingPositive {
    private FirstMissingPositive() {}

    /**
     * Given an unsorted integer array, find the smallest missing positive integer.
     *
     * Example 1:
     * Input: [1,2,0]
     * Output: 3
     *
     * Example 2:
     * Input: [3,4,-1,1]
     * Output: 2
     *
     * Example 3:
     * Input: [7,8,9,11,12]
     * Output: 1
     *
     * Note:
     * Your algorithm should run in O(n) time and uses constant extra space.
     */
    /**
     * 题意：这道题让我们找缺失的首个正数，
     * 思路：
     * 由于限定了O(n)的时间，所以一般的排序方法都不能用，最开始我没有看到还限制了空间复杂度，所以想到了用HashSet来解，这个思路很简单，第一遍遍历数组把所有的数都存入HashSet中，并且找出数组的最大值，下次循环从1开始递增找数字，哪个数字找不到就返回哪个数字，如果一直找到了最大的数字，则返回最大值+1，
     */
    static int getFirstMissingPositive(int[] arr) {
        int max = 0, n = arr.length;
        HashSet<Integer> set = new HashSet<>();
        for (int v : arr) {
            if (v < 0) {
                continue;
            }
            set.add(v);
            max = Math.max(max, v);
        }

        for (int i = 1; i <= max; i++) {
            if (i >= 0 && !set.contains(i)) {
                return i;
            }
        }
        return max + 1;
    }

    private static void testGetFirstMissingPositive() {
        int[] arr = new int[]{7,8,9,11,12};
        System.out.println(getFirstMissingPositive(arr));
    }

    public static void main(String[] args) {
        testGetFirstMissingPositive();
    }
}
