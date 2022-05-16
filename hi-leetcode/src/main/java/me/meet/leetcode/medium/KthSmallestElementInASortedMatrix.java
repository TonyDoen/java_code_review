package me.meet.leetcode.medium;

import java.util.PriorityQueue;

public final class KthSmallestElementInASortedMatrix {
    private KthSmallestElementInASortedMatrix() {}
    /**
     * 378. Kth Smallest Element in a Sorted Matrix
     *
     * Given an n x n matrix where each of the rows and columns is sorted in ascending order, return the kth smallest element in the matrix.
     * Note that it is the kth smallest element in the sorted order, not the kth distinct element.
     * You must find a solution with a memory complexity better than O(n2).
     *
     * Example 1:
     * Input: matrix = [[1,5,9],[10,11,13],[12,13,15]], k = 8
     * Output: 13
     * Explanation: The elements in the matrix are [1,5,9,10,11,12,13,13,15], and the 8th smallest number is 13
     *
     * Example 2:
     * Input: matrix = [[-5]], k = 1
     * Output: -5
     *
     * Constraints:
     * 1. n == matrix.length == matrix[i].length
     * 2. 1 <= n <= 300
     * 3. -109 <= matrix[i][j] <= 109
     * 4. All the rows and columns of matrix are guaranteed to be sorted in non-decreasing order.
     * 5. 1 <= k <= n2
     *
     */
    /**
     * 题意：
     * 给定一个 n x n 矩阵，其中每行和每列元素均按升序排序，找到矩阵中第 k 小的元素。
     * 请注意，它是排序后的第 k 小元素，而不是第 k 个不同的元素。
     *
     * 示例：
     * matrix = [
     *    [ 1,  5,  9],
     *    [10, 11, 13],
     *    [12, 13, 15]
     * ],
     * k = 8,
     * 返回 13。
     *
     * 提示：
     * 你可以假设 k 的值永远是有效的，1 ≤ k ≤ n^2 。
     *
     *
     * 解题思路：
     * 1. 堆排序+记录行数
     * 2. 二分查找
     */

    /**
     * url: 
     * https://leetcode.cn/problems/kth-smallest-element-in-a-sorted-matrix/solution/shi-yong-dui-heapde-si-lu-xiang-jie-ling-fu-python/
     * https://blog.csdn.net/lanheboyuan/article/details/107096011
     *
     * 1、堆排序+记录行数
     * 因为矩阵从左往右、从上到下依次是有序的，如果矩阵有两行，那么就变成两个有序矩阵合并求第k小元素，这就是归并排序的最基础形式；
     * 这一题给定一共有N行，我们可以对所有的数组最前面的元素进行比较，挑选出最小的作为下一个最小元素，可以使用最小堆的特性（堆顶）；
     * 此外，我们还要记录当前最小的元素属于哪一行，并且在第几列。我们可以把元组(v, i)作为整体存入最小堆，这就需要我们重写一个比较函数，
     * 重载__lt__。当然也可以使用优先队列PriorityQueue
     *
     *
     * 复杂度分析：
     * 时间复杂度：O(Klog(N))
     * 空间复杂度：O(N)
     */
    static Integer kthSmallest(int[][] matrix, int k) {
        int n = matrix.length;
        PriorityQueue<Integer> heap = new PriorityQueue<>((a, b) -> b - a);
        for (int[] ints : matrix) {
            for (int j = 0; j < n; j++) {
                heap.add(ints[j]);
                if (heap.size() > k) {
                    heap.poll();
                }
            }
        }
        return heap.peek();
    }

    static Integer kthSmallestH(int[][] matrix, int k) {
        int[] arr = new int[k];
        int row = matrix.length, col = matrix[0].length;
        int count = 0, i = 0, j = 0;
        for (; i < row; i++) {
            for (j = 0; j < col; j++) {
                if (count >= k) {
                    break;
                }
                int cur = matrix[i][j];
                arr[count++] = cur;
            }
            if (count >= k) {
                break;
            }
        }
        for (int x = (k - 1) / 2; x >= 0; x--) {
            //从第一个非叶子结点从下至上，从右至左调整结构
            downAdjust(arr, x, k);
        }
        for (; i < row; i++) {
            for (; j < col; j++) {
                int cur = matrix[i][j];
                if (cur < arr[0]) {
                    arr[0] = cur;
                    downAdjust(arr, 0, k);
                }
            }
            j = 0;
        }
        return arr[0];
    }

    // 大根堆
    private static void downAdjust(int[] arr, int p, int k) {
        // arr = int[k+1];
        // parent = i, left = 2i+1, right = 2i+2, i < k

        //将temp作为父节点
        int tmp = arr[p];
        //左孩子
        int l = 2 * p + 1;
        while (l < k) {
            //右孩子
            int r = l + 1;
            // 如果有右孩子结点，并且右孩子结点的值大于左孩子结点，则选取右孩子结点
            if (r < k && arr[l] < arr[r]) {
                l++;
            }

            // 如果父结点的值已经大于孩子结点的值，则直接结束
            if (tmp >= arr[l]) {
                break;
            }

            // 把孩子结点的值赋给父结点
            arr[p] = arr[l];

            //选取孩子结点的左孩子结点,继续向下筛选
            p = l;
            l = 2 * l + 1;
        }
        arr[p] = tmp;
    }
    /**
     * 创建堆，
     * @param arr 待排序列
     */
    private static void heapSort(int[] arr) {
        //创建堆
        for (int i = (arr.length - 1) / 2; i >= 0; i--) {
            //从第一个非叶子结点从下至上，从右至左调整结构
            downAdjust(arr, i, arr.length);
        }

        //调整堆结构+交换堆顶元素与末尾元素
        for (int i = arr.length - 1; i > 0; i--) {
            //将堆顶元素与末尾元素进行交换
            int temp = arr[i];
            arr[i] = arr[0];
            arr[0] = temp;

            //重新对堆进行调整
            downAdjust(arr, 0, i);
        }
    }


    /**
     * url:
     * https://www.superweb999.com/article/280646.html
     * https://zhuanlan.zhihu.com/p/140541322
     * https://www.programminghunter.com/article/7306413754/
     *
     * 2. 二分查找
     * 矩阵内的元素是从左上到右下递增的，整个二维数组中 matrix[0][0] 为最小值，matrix[n−1][n−1] 为最大值，现在将其分别记作 left 和 right。
     * 任取一个数 mid 满足 left ≤ mid ≤ right，那么矩阵中不大于 mid 的数，肯定全部分布在矩阵的左上角。
     * 矩阵中大于 mid 的数就和不大于 mid 的数分别形成了两个板块，沿着一条锯齿线将这个矩形分开。
     * 其中左上角板块的大小即为矩阵中不大于 mid 的数的数量。
     * 只要沿着这条锯齿线走一遍即可计算出这两个板块的大小，也自然就统计出了这个矩阵中不大于 mid 的数的个数了。
     *
     *             {1,2,3,4},
     *             {2,3,4,|5},
     *             {3,4,|5,6},
     *             {4,|5,6,7}
     *
     * 可以这样描述走法：
     * 1）初始位置在 matrix[n−1][0]（即左下角）；
     * 2）设当前位置为 matrix[i][j]：
     *   2.1）若 matrix[i][j] ≤ mid，则将当前所在列的不大于 mid 的数的数量（即 i+1）累加到答案中，并向右移动；
     *   2.2）若 matrix[i][j] > mid，则暂不做统计，并向上移动。
     * 3）不断移动直到走出格子为止。
     *
     * 不妨假设答案为 x，那么可以知道 left ≤ x ≤ right，这样就确定了二分答案的上下界。
     * 每次对于猜测的答案 mid，计算矩阵中目前有多少数小于等于 mid ：
     * 1）如果数量大于等于 k，那么说明最终答案 x 小于等于 mid；
     * 2）如果数量小于 k，那么说明最终答案 x 大于 mid。
     *
     * 假设矩阵中第k小的元素为a，第(k+1)小的元素为b，那么使得矩阵中有k个小于等于mid的元素，mid一定会在a与b之间，即 mid∈[a,b)
     * （注：mid不一定是矩阵中的元素），
     * 而算法中最后返回的是left，也就是第一个满足有k个小于等于自身的元素，无疑a是第一个，所以找到的left一定是在矩阵中的。
     *
     *
     * 复杂度分析：
     * 时间复杂度：O(nlog(r−l))，二分查找进行次数为 O(log(r−l))，每次操作时间复杂度为 O(n)。
     * 空间复杂度：O(1)。
     */
    static Integer kthSmallestBS(int[][] matrix, int k) {
        int n = matrix.length;
        int left = matrix[0][0];
        int right = matrix[n - 1][n - 1];
        while (left < right) {
            int mid = left + (right - left) / 2;
            if (check(matrix, mid, k, n)) {
                right = mid;
            } else {
                left = mid + 1;
            }
        }
        return left;
    }

    private static boolean check(int[][] matrix, int mid, int k, int n) {
        int i = n - 1;
        int j = 0;
        int cnt = 0;
        while (i >= 0 && j <= n - 1) {
            if (matrix[i][j] <= mid) {
                cnt += i + 1;
                j++;
            } else {
                i--;
            }
        }
        return cnt >= k;
    }

    private static void testFindK() {
        int[][] arr = new int[][]{
            {1, 2, 3, 4},
            {3, 3, 4, 5},
            {3, 4, 5, 6},
            {4, 5, 6, 7}};
        int k = 8;

//        int[][] arr = new int[][]{
//            {1, 5, 9},
//            {10, 11, 13},
//            {12, 13, 15}};
//        int k = 8;

        int rs = kthSmallest(arr, k);
        System.out.println(rs);

        rs = kthSmallestH(arr, k);
        System.out.println(rs);

        rs = kthSmallestBS(arr, k);
        System.out.println(rs);
    }

    public static void main(String[] args) {
        testFindK();
        heapSort(new int[]{-1, 0, 3, 7, 1, 5});
    }
}
