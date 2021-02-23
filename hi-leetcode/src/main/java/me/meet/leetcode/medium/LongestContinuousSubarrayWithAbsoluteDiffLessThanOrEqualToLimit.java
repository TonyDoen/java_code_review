package me.meet.leetcode.medium;

import java.util.TreeMap;

public final class LongestContinuousSubarrayWithAbsoluteDiffLessThanOrEqualToLimit {
    private LongestContinuousSubarrayWithAbsoluteDiffLessThanOrEqualToLimit() {
    }
    /**
     * 1438. Longest Continuous Subarray With Absolute Diff Less Than or Equal to Limit
     *
     * Given an array of integers nums and an integer limit, return the size of the longest non-empty subarray such that the absolute difference between any two elements of this subarray is less than or equal to limit.
     *
     * Constraints:
     * 1 <= nums.length <= 10^5
     * 1 <= nums[i] <= 10^9
     * 0 <= limit <= 10^9
     *
     * Example 1:
     * Input: nums = [8,2,4,7], limit = 4
     * Output: 2
     *
     * Explanation: All subarrays are:
     * [8] with maximum absolute diff |8-8| = 0 <= 4.
     * [8,2] with maximum absolute diff |8-2| = 6 > 4.
     * [8,2,4] with maximum absolute diff |8-2| = 6 > 4.
     * [8,2,4,7] with maximum absolute diff |8-2| = 6 > 4.
     * [2] with maximum absolute diff |2-2| = 0 <= 4.
     * [2,4] with maximum absolute diff |2-4| = 2 <= 4.
     * [2,4,7] with maximum absolute diff |2-7| = 5 > 4.
     * [4] with maximum absolute diff |4-4| = 0 <= 4.
     * [4,7] with maximum absolute diff |4-7| = 3 <= 4.
     * [7] with maximum absolute diff |7-7| = 0 <= 4.
     * Therefore, the size of the longest subarray is 2.
     *
     *
     * Example 2:
     * Input: nums = [10,1,2,4,7,2], limit = 5
     * Output: 4
     *
     * Explanation: The subarray [2,4,7,2] is the longest since the maximum absolute diff is |2-7| = 5 <= 5.
     *
     *
     * Example 3:
     * Input: nums = [4,2,2,2,4,4,2,2], limit = 0
     * Output: 3
     *
     */
    /**
     * 思路：
     * 滑动窗口
     *
     * window 记录 int[] nums 已经进入窗口的元素和可用次数
     *
     */
    static int longestSubarray(int[] nums, int limit) {
        TreeMap<Integer, Integer> window = new TreeMap<>();
        int left = 0, right = 0, result = 0;
        while (right < nums.length) {
            int ir = nums[right];
            right++;

            // 进行窗口内数据的一系列更新
            window.put(ir, window.getOrDefault(ir, 0) + 1);

            // 判断左侧窗口是否收缩
            while (window.lastKey() - window.firstKey() > limit) {
                int il = nums[left];
                left++;

                // 进行窗口内数据的一系列更新
                window.put(il, window.get(il) - 1);
                if (0 == window.get(il)) {
                    window.remove(il);
                }
            }
            result = Math.max(result, right - left);
        }
        return result;
    }

    private static void testLongestSubarray() {
        int[] nums = new int[]{8, 2, 4, 7};
        int limit = 4;
        int res = longestSubarray(nums, limit);
        System.out.println(res);
    }

    public static void main(String[] args) {
        testLongestSubarray();
    }
}
