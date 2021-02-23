package me.meet.leetcode.hard;

public final class EditDistance {
    private EditDistance() {
    }
    /**
     * 72. Edit Distance
     *
     * Given two strings word1 and word2, return the minimum number of operations required to convert word1 to word2.
     * You have the following three operations permitted on a word:
     * <1> Insert a character
     * <2> Delete a character
     * <3> Replace a character
     *
     * Example 1:
     * Input: word1 = "horse", word2 = "ros"
     * Output: 3
     *
     * Explanation:
     * horse -> rorse (replace 'h' with 'r')
     * rorse -> rose  (remove 'r')
     * rose -> ros    (remove 'e')
     *
     *
     * Example 2:
     * Input: word1 = "intention", word2 = "execution"
     * Output: 5
     *
     * Explanation:
     * intention -> inention (remove 't')
     * inention -> enention (replace 'i' with 'e')
     * enention -> exention (replace 'n' with 'x')
     * exention -> exection (replace 'n' with 'c')
     * exection -> execution (insert 'u')
     *
     *
     */
    /**
     *
     * 思路：
     * 为什么说这个问题难呢，因为显而易见，它就是难，让人手足无措，望而生畏。
     *
     * 编辑距离问题就是给我们两个字符串s1和s2，只能用三种操作，让我们把s1变成s2，求最少的操作数。
     *
     * 前文[最长公共子序列]说过，解决两个字符串的动态规划问题，
     * 一般都是用两个指针i,j分别指向两个字符串的最后，然后一步步往前走，缩小问题的规模。
     *
     * 令 s1="rad"; s2="apple", 把 s1 变成 s2
     * init:
     *       s1 => r a d
     *                 i (指针)
     *       s2 => a p p l e
     *                     j (指针)
     *
     * step1: insert 'e'
     *       s1 => r a d e
     *                 i (指针)
     *       s2 => a p p l e
     *                   j (指针)
     *
     * step2: insert 'l'
     *       s1 => r a d l e
     *                 i (指针)
     *       s2 => a p p l e
     *                 j (指针)
     *
     * step3: insert 'p'
     *       s1 => r a d p l e
     *                 i (指针)
     *       s2 => a p p l e
     *                 j (指针)
     *
     * step4: replace 'd' -> 'p'
     *       s1 => r a p p l e
     *                 i (指针)
     *       s2 => a p p l e
     *               j (指针)
     *
     * step5: match and skip
     *       s1 => r a p p l e
     *               i (指针)
     *       s2 => a p p l e
     *             j (指针)
     *
     * step5: delete 'r'
     *       s1 => [r] a p p l e
     *             i (指针)
     *       s2 => a p p l e
     *             j (指针)
     *
     * 字符串操作需要5步
     *
     * 上面，就是j走完s2时，如果i还没走完s1，那么只能用删除操作把s1缩短为s2
     * 类似的，如果i走完s1时j还没走完了s2，那就只能用插入操作把s2剩下的字符全部插入s1。
     * 等会会看到，这两种情况就是算法的 base case。
     *
     * 伪代码：
     *   if s1[i] == s2[j]:
     *       skip
     *       i,j 同时前进
     *   else:
     *       三选一:
     *           insert (插入)
     *           delete (删除)
     *           replace(替换)
     *
     *
     * 主要解释 DP table 的解法：
     *
     * 首先明确 dp 数组的含义，dp 数组是一个二维数组，
     * 长这样：
     *  s1 \ s2  ""  a  p  p  l  e
     *  ""       0   1  2  3  4  5
     *  r        1   1  2  3  4  5
     *  a        2   1  2  3  4  5
     *  d        3   2  2  3  4  5
     *
     *  先写 第0行 和 第0列的情况：比较好写(也是 base case)
     *  再写 矩阵内部的值
     *
     *  dp[i][j]的含义和之前的 dp 函数类似：
     *  def dp(i, j) -> int  # 返回 s1[0..i] 和 s2[0..j] 的最小编辑距离
     *  dp[i-1][j-1]         # 存储 s1[0..i] 和 s2[0..j] 的最小编辑距离
     *
     *  dp 函数的 base case 是i,j等于 -1，而数组索引至少是 0，所以 dp 数组会偏移一位，
     *  dp[..][0]和dp[0][..]对应 base case。
     */
    static int minDistance(String s1, String s2) {
        int m = s1.length(), n = s2.length();
        int[][] dp = new int[m + 1][n + 1];

        // base case
        for (int i = 1; i <= m; i++) {
            dp[i][0] = i;
        }
        for (int j = 1; j <= n; j++) {
            dp[0][j] = j;
        }

        // 自底向上求解
        for (int i = 1; i <= m; i++) {
            for (int j = 1; j <= n; j++) {
                if (s1.charAt(i - 1) == s2.charAt(j - 1)) {
                    dp[i][j] = dp[i - 1][j - 1];             // skip
                } else {
                    dp[i][j] = min(dp[i - 1][j] + 1,   // insert
                        dp[i][j - 1] + 1,                    // delete
                        dp[i - 1][j - 1] + 1                 // replace
                    );
                }
            }
        }
        // 存储整个 s1, s2 的最小编辑距离
        return dp[m][n];
    }

    private static int min(int... args) {
        int res = Integer.MAX_VALUE;
        for (int i : args) {
            res = Math.min(res, i);
        }
        return res;
    }

    private static void testMinDistance() {
        String s1 = "rad", s2 = "apple";
        int res = minDistance(s1, s2);
        System.out.println(res);

    }

    public static void main(String[] args) {
        testMinDistance();
    }
}
