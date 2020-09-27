package me.meet.leetcode.medium;

import java.util.Arrays;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;

public final class ShortestBridge {
    private ShortestBridge() {
    }

    /**
     * In a given 2D binary array `A`, there are two islands.  (An island is a 4-directionally connected group of `1`s not connected to any other 1s.)
     * Now, we may change 0s to 1s so as to connect the two islands together to form 1 island.
     * Return the smallest number of 0s that must be flipped.  (It is guaranteed that the answer is at least 1.)
     *
     * Example 1:
     * Input: [[0,1],[1,0]]
     * Output: 1
     *
     * Example 2:
     * Input: [[0,1,0],[0,0,0],[0,0,1]]
     * Output: 2
     *
     * Example 3:
     * Input: [[1,1,1,1,1],[1,0,0,0,1],[1,0,1,0,1],[1,0,0,0,1],[1,1,1,1,1]]
     * Output: 1
     *
     * Note:
     * 1 <= A.length = A[0].length <= 100
     * A[i][j] == 0 or A[i][j] == 1
     */
    /**
     * 这道题说是有一个只有0和1的二维数组，其中连在一起的1表示岛屿，现在假定给定的数组中一定有两个岛屿，问最少需要把多少个0变成1才能使得两个岛屿相连。在 LeetCode 中关于岛屿的题目还不少，但是万变不离其宗，核心都是用 DFS 或者 BFS 来解，有些还可以用联合查找 Union Find 来做。这里要求的是最小值，首先预定了一个 BFS，这就相当于洪水扩散一样，一圈一圈的，用的就是 BFS 的层序遍历。好，现在确定了这点后，再来想，这里并不是从某个点开始扩散，而是要从一个岛屿开始扩散，那么这个岛屿的所有的点都是 BFS 的起点，都是要放入到 queue 中的，所以要先来找出一个岛屿的所有点。找的方法就是遍历数组，找到第一个1的位置，然后对其调用 DFS 或者 BFS 来找出所有相连的1，先来用 DFS 的方法，对第一个为1的点调用递归函数，将所有相连的1都放入到一个队列 queue 中，并且将该点的值改为2，然后使用 BFS 进行层序遍历，每遍历一层，结果 res 都增加1，当遇到1时，直接返回 res 即可，
     */

    private final static int[] direction = {-1, 0, 1, 0, -1}; // 下标(i,i+1) => 上/下/左/右

    static int shortestBridge(int[][] arr) {
        if (arr == null || arr.length <= 0) {
            return 0;
        }
        // 先用深度优先搜索找岛屿, 然后使用广搜找距离
        int m = arr.length;
        int n = arr[0].length;
        Deque<List<Integer>> deque = new LinkedList<>();
        boolean flag = false;
        for (int i = 0; i < m; i++) {//找到第一个岛屿
            if (flag)
                break;
            for (int j = 0; j < n; j++) {
                if (arr[i][j] == 1) {
                    dfs(deque, arr, i, j);
                    flag = true;
                    break;
                }
            }
        }
        int level = 0;
        List<Integer> position = null;
        while (!deque.isEmpty()) {
            level++;
            int size = deque.size();
            while (size-- > 0) {
                position = deque.poll();
                for (int i = 0; i < 4; i++) {
                    assert position != null;
                    int x = position.get(0) + direction[i];
                    int y = position.get(1) + direction[i + 1];
                    if (x < 0 || x >= m || y < 0 || y >= n) {
                        continue;
                    }
                    if (arr[x][y] == 1) {
                        return level;
                    }
                    if (arr[x][y] == 2) {
                        continue;
                    }

                    deque.add(Arrays.asList(x, y));
                    arr[x][y] = 2;
                }

            }
        }
        return level;
    }

    private static void dfs(Deque<List<Integer>> deque, int[][] arr, int r, int c) {
        int x = 0, y = 0;
        int m = arr.length;
        int n = arr[0].length;
        if (r < 0 || r >= m || c < 0 || c >= n || arr[r][c] == 2) {
            return;
        }
        if (arr[r][c] == 0) {
            deque.add(Arrays.asList(r, c));
            return;
        }
        arr[r][c] = 2;
        for (int i = 0; i < 4; i++) {
            x = r + direction[i];
            y = c + direction[i + 1];
            if (x >= 0 && x < m && y >= 0 && y < m) {
                dfs(deque, arr, x, y);
            }
        }
    }

    private static void testShortestBridge() {
//        int[][] arr = new int[][]{{0, 1},{1, 0}};
        int[][] arr = new int[][]{{0, 1, 0}, {0, 0, 0}, {0, 0, 1}};
        int res = shortestBridge(arr);
        System.out.println(res);
    }

    public static void main(String[] args) {
        testShortestBridge();
    }
}
