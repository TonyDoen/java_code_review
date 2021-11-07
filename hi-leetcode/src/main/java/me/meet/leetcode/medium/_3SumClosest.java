package me.meet.leetcode.medium;

import java.util.Arrays;

public final class _3SumClosest {
    private _3SumClosest() {
    }
    /*
     * [LeetCode] 16. 3Sum Closest
     *
     * Given an array nums of n integers and an integer target, find three integers in nums such that the sum is closest to target.
     * Return the sum of the three integers. You may assume that each input would have exactly one solution.
     *
     * Example:
     * Given array nums = [-1, 2, 1, -4], and target = 1.
     * The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
     *
     */
    /*
     * [LeetCode] 16.  最近三数之和
     *
     * 这道题让我们求最接近给定值的三数之和，是在之前那道 3Sum 的基础上又增加了些许难度，那么这道题让返回这个最接近于给定值的值，即要保证当前三数和跟给定值之间的差的绝对值最小，
     * 所以需要定义一个变量 diff 用来记录差的绝对值，然后还是要先将数组排个序，然后开始遍历数组，
     *
     * 思路跟那道三数之和很相似，都是先确定一个数，然后用两个指针 left 和 right 来滑动寻找另外两个数，每确定两个数，
     * 求出此三数之和，然后算和给定值的差的绝对值存在 newDiff 中，然后和 diff 比较并更新 diff 和结果 closest 即可，
     *
     *
     * 二分法来做。
     * 1. 先将一维数组排序
     * 2. 然后第一个元素+最后一个元素+中间元素的和与目标值进行比较。
     * 3. 按照比较结果继续遍历。
     */
    static int threeSumClosest(int[] nums, int target) {
        int len = nums.length;
        int sum = nums[0] + nums[1] + nums[len-1];
        int diff = sum - target;
        Arrays.sort(nums); // sort

        for (int left = 0; left < len; left++) {
            int right = len - 1;
            int mid = left + 1;
            while (mid < right) {
                sum = nums[left] + nums[mid] + nums[right];
                if (Math.abs(sum - target) < Math.abs(diff)) {
                    diff = sum - target;
                }
                if (sum == target) {
                    return sum;
                } else if (sum < target) {
                    mid++;
                } else {
                    right--;
                }
            }
        }
        return diff + target;
    }

    private static void testThreeSumClosest() {
        int[] nums = new int[]{-1, 2, 1, -4};
        int target = 1;
        int rs = threeSumClosest(nums, target);
        System.out.println(rs);
    }

    public static void main(String[] args) {
        //
        testThreeSumClosest();
    }
}
