package me.meet.leetcode.medium;

public final class MinimumFallingPathSum {
    private MinimumFallingPathSum() {
    }
    /**
     * 931. Minimum Falling Path Sum
     * Given a square array of integers A, we want the minimum sum of a falling path through A.
     * A falling path starts at any element in the first row, and chooses one element from each row.  The next row's choice must be in a column that is different from the previous row's column by at most one.
     *
     * Example 1:
     * Input: [[1,2,3],[4,5,6],[7,8,9]]
     * Output: 12
     *
     * Explanation:
     * The possible falling paths are:
     * -   `[1,4,7], [1,4,8], [1,5,7], [1,5,8], [1,5,9]`
     * -   `[2,4,7], [2,4,8], [2,5,7], [2,5,8], [2,5,9], [2,6,8], [2,6,9]`
     * -   `[3,5,7], [3,5,8], [3,5,9], [3,6,8], [3,6,9]`
     * The falling path with the smallest sum is [1,4,7], so the answer is 12.
     *
     * Note:
     * 1 <= A.length == A[0].length <= 100
     * -100 <= A[i][j] <= 100
     */
    /**
     * 下降路径最小和
     * 给定一个方形整数数组 A，我们想要得到通过 A 的下降路径的最小和。
     * 下降路径可以从第一行中的任何元素开始，并从每一行中选择一个元素。在下一行选择的元素和当前行所选元素最多相隔一列。
     *
     * 示例：
     * 输入：[[1,2,3],[4,5,6],[7,8,9]]
     * 输出：12
     *
     * 解释：
     * 可能的下降路径有：
     * [1,4,7], [1,4,8], [1,5,7], [1,5,8], [1,5,9]
     * [2,4,7], [2,4,8], [2,5,7], [2,5,8], [2,5,9], [2,6,8], [2,6,9]
     * [3,5,7], [3,5,8], [3,5,9], [3,6,8], [3,6,9]
     * 和最小的下降路径是 [1,4,7]，所以答案是 12。
     *
     * 提示：
     * 1 <= A.length == A[0].length <= 100
     * -100 <= A[i][j] <= 100
     */
    /**
     * 思路：
     * 这道题给了一个长宽相等的二维数组，说是让找一个列路径，使得相邻两个位置的数的距离不超过1，可以通过观察题目中给的例子来理解题意。
     * 由于每个位置上的累加值是由上一行的三个位置中较小的那个决定的，所以这就是一道典型的动态规划 Dynamic Programming 的题，为了节省空间，直接用数组A本身当作 dp 数组，其中 A[i][j] 就表示最后一个位置在 (i, j) 的最小的下降路径，则最终只要在最后一行中找最小值就是所求。
     * 由于要看上一行的值，所以要从第二行开始遍历，那么首先判断一下数组是否只有一行，是的话直接返回那个唯一的数字即可。否则从第二行开始遍历，一定存在的是 A[i-1][j] 这个数字，而它周围的两个数字需要判断一下，存在的话才进行比较取较小值，将最终的最小值加到当前的 A[i][j] 上即可。为了避免重新开一个 for 循环，判断一下，若当前是最后一行，则更新结果 res，
     */
    static int minFallingPathSum(int[][] arr) {
        if (arr.length == 1) {
            return arr[0][0];
        }
        int n = arr.length, res = Integer.MAX_VALUE;
        for (int i = 1; i < n; i++) {
            for (int j = 0; j < n; j++) {
                int pre = arr[i - 1][j];
                if (j > 0) {
                    pre = Math.min(pre, arr[i - 1][j - 1]);
                }
                if (j < n - 1) {
                    pre = Math.min(pre, arr[i - 1][j + 1]);
                }
                arr[i][j] += pre;
                if (i == n - 1) {
                    res = Math.min(res, arr[i][j]);
                }
            }
        }
        return res;
    }

    public static void main(String[] args) {

    }
}
