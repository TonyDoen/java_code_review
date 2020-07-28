package me.meet.leetcode.medium;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ImageOverlap {
    private ImageOverlap() {
    }

    /**
     * Two images A and B are given, represented as binary, square matrices of the same size.  (A binary matrix has only 0s and 1s as values.)
     * We translate one image however we choose (sliding it left, right, up, or down any number of units), and place it on top of the other image.  After, the overlap of this translation is the number of positions that have a 1 in both images.
     * (Note also that a translation does not include any kind of rotation.)
     * What is the largest possible overlap?
     * 
     * Example 1:
     * Input: A = [[1,1,0],
     * [0,1,0],
     * [0,1,0]]
     *
     * B = [[0,0,0],
     * [0,1,1],
     * [0,0,1]]
     * Output: 3
     * Explanation: We slide A to right by 1 unit and down by 1 unit.
     * Notes:
     * 
     * 1 <= A.length = A[0].length = B.length = B[0].length <= 30
     * 0 <= A[i][j], B[i][j] <= 1
     * 
     * 
     *
     *
     * 给出两个图像 A 和 B ，A 和 B 为大小相同的二维正方形矩阵。（并且为二进制矩阵，只包含0和1）。
     * 我们转换其中一个图像，向左，右，上，或下滑动任何数量的单位，并把它放在另一个图像的上面。之后，该转换的重叠是指两个图像都具有 1 的位置的数目。
     * （请注意，转换不包括向任何方向旋转。）
     * 最大可能的重叠是什么？
     * 
     * 示例 1:
     * 输入：A = [[1,1,0],
     * [0,1,0],
     * [0,1,0]]
     *
     * B = [[0,0,0],
     * [0,1,1],
     * [0,0,1]]
     * 输出：3
     * 解释: 将 A 向右移动一个单位，然后向下移动一个单位。
     * 
     * 注意:
     * 1 <= A.length = A[0].length = B.length = B[0].length <= 30
     * 0 <= A[i][j], B[i][j] <= 1
     * 
     * 
     * 
     * 思路:
     * 这道题给了我们两个用大小相同的二维数组表示的图像，里面只有0或1，问我们经过任意平移后，能产生的最大重叠是多少，这里只计算值为1的重叠。给的例子中，我们只要将图像A向右和向下平移一位，就能得到3个重叠。那么首先来思考 brute force 的方法，对于一个 nxn 大小的数组，其实其能平移的情况是有限的，水平和竖直方向分别有n种移动方式，那么总共有 nxn 种移动方法，那么我们只要对于每种移动方式后，都计算一下重叠的个数，那么就一定可以找出最大值来。需要注意的是，A和B分别都需要移动 nxn 次，我们可以使用一个子函数来专门统计重叠个数，需要传入横向纵向的平移量 rowOffset 和 colOffset，那么只需让其中一个数组减去偏移量后跟另一个数组对应位置的值相乘，由于只有0和1，若相乘为1的话，就说明有重叠，直接累加即可，参见代码如下：
     */
    static int largestOverlap(int[][] aArr, int[][] bArr) {
        int res = 0, n = aArr.length;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                res = Math.max(res, Math.max(count(aArr, bArr, i, j), count(bArr, aArr, i, j)));
            }
        }
        return res;
    }

    private static int count(int[][] aArr, int[][] bArr, int row, int col) {
        int sum = 0, n = aArr.length;
        for (int i = row; i < n; i++) {
            for (int j = col; j < n; j++) {
                sum += aArr[i][j] * bArr[i - row][j - col];
            }
        }
        return sum;
    }

    /**
     * 思路:
     * 我们还可以换一种思路，由于只有值为1的地方才有可能重叠，所以我们只关心A和B中值为1的地方，将其坐标位置分别存入两个数组 listA 和 listB 中。由于对于A和B中的任意两个1的位置，肯定有一种方法能将A平移到B，平移的方法就是横向平移其横坐标之差，竖向平移其纵坐标之差。由于其是一一对应关系，所以只要是横纵坐标差相同的两对儿位置，一定是在同一次平移上。那么我们就需要一个 HashMap 来建立坐标差值和其出现次数之间的映射，为了降维，将横纵坐标之差转为字符串，然后中加上个横杠分隔开，这样只要组成了相同的字符串，那么一定就是在同一个平移上，计数器自增1。最后在 HashMap 中找到最大的值即可，
     */
    static int largestOverlap1(int[][] aArr, int[][] bArr) {
        List<List<Integer>> ltA = new ArrayList<>();
        List<List<Integer>> ltB = new ArrayList<>();
        Map<String, Integer> mp = new HashMap<>();

        int res = 0, n = aArr.length;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                List<Integer> lt = Arrays.asList(i, j);
                if (1 == aArr[i][j]) {
                    ltA.add(lt);
                }
                if (1 == bArr[i][j]) {
                    ltB.add(lt);
                }
            }
        }
        for (List<Integer> a : ltA) {
            for (List<Integer> b : ltB) {
                String key = String.format("%d-%d", a.get(0) - b.get(0), a.get(1) - b.get(1));
                mp.merge(key, 1, Integer::sum);
            }
        }
        for (Map.Entry<String, Integer> entry : mp.entrySet()) {
            Integer v = entry.getValue();
            res = Math.max(res, v);
        }
        return res;
    }

    /**
     * 思路:
     * 我们可以优化一下空间，可以将二维坐标加码成一个数字，一般的做法都是将 (i, j) 变成 i*n + j，但是这道题却不行，因为我们算横纵坐标的差值时想直接相减，这种加码方式会使得横纵坐标之间互相干扰。由于题目中给了n的范围，不会超过 30，所以我们可以给横坐标乘以 100，再加上纵坐标，即 i*100 + j，这种加码方式万无一失。然后还是要用 HashMap 来建立坐标差值和其出现次数之间的映射，不过这次就简单多了，不用转字符串了，直接用数字相减即可，最后返回 HashMap 中最大的统计数，
     * 
     * ...
     */

    private static void testLargestOverlap() {
        int[][] aArr = new int[][]{{1, 1, 0}, {0, 1, 0}, {0, 1, 0}};
        int[][] bArr = new int[][]{{0, 0, 0}, {0, 1, 1}, {0, 0, 1}};
        int res = largestOverlap(aArr, bArr);
        System.out.println(res);

        int res1 = largestOverlap1(aArr, bArr);
        System.out.println(res1);
    }

    public static void main(String[] args) {
        testLargestOverlap();
    }
}
