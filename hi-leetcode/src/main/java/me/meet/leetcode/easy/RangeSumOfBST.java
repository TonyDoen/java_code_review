package me.meet.leetcode.easy;

public final class RangeSumOfBST {
    private RangeSumOfBST() {
    }
    /**
     * 938. Range Sum of BST
     * Given the `root` node of a binary search tree, return the sum of values of all nodes with value between `L` and `R` (inclusive).
     * The binary search tree is guaranteed to have unique values.
     *
     * Example 1:
     * Input: root = [10,5,15,3,7,null,18], L = 7, R = 15
     * Output: 32
     *
     * Example 2:
     * Input: root = [10,5,15,3,7,13,18,1,null,6], L = 6, R = 10
     * Output: 23
     *
     * Note:
     * The number of nodes in the tree is at most 10000.
     * The final answer is guaranteed to be less than 2^31.
     */
    /**
     * 题意：938. Range Sum of BST 二叉搜索树的区间和
     * 思路：这道题给了一棵二叉搜索树，还给了两个整型数L和R，让返回所有结点值在区间 [L, R] 内的和，就是说找出所有的在此区间内的结点，将其所有结点值累加起来返回即可。
     * 最简单粗暴的思路就是遍历所有的结点，对每个结点值都检测其是否在区间内，是的话就累加其值，最后返回累加和即可，
     */
    static int rangeSumBST(TreeNode root, int l, int r) {
        Result res = new Result();
        helper(root, l, r, res);
        return res.val;
    }

    private static void helper(TreeNode node, int l, int r, Result res) {
        if (null == node) {
            return;
        }
        if (node.val >= l && node.val <= r) {
            res.val += node.val;
        }
        helper(node.left, l, r, res);
        helper(node.right, l, r, res);
    }

    private static class Result {
        int val = 0;
    }

    static class TreeNode {
        TreeNode left, right;
        int val;

        public TreeNode() {
        }

        public TreeNode(TreeNode left, TreeNode right, int val) {
            this.left = left;
            this.right = right;
            this.val = val;
        }
    }

    private static TreeNode prepareTreeNode() {
        // [10,5,15,3,7,null,18]
        /**
         *          10
         *         /  \
         *        5    15
         *      /  \     \
         *     3    7     18
         *
         */
        TreeNode _18 = new TreeNode(null, null, 18);
        TreeNode _7 = new TreeNode(null, null, 7);
        TreeNode _3 = new TreeNode(null, null, 3);
        TreeNode _15 = new TreeNode(null, _18, 15);
        TreeNode _5 = new TreeNode(_3, _7, 5);
        TreeNode _10 = new TreeNode(_5, _15, 10);
        return _10;
    }

    /**
     * 题意：938. Range Sum of BST 二叉搜索树的区间和
     * 思路：
     * 利用到二叉搜索树的性质，由于 BST 具有 左<根<右 的特点，
     * 若当前结点值小于L，则说明其左子树所有结点均小于L，可以直接将左子树剪去；
     * 若当前结点值大于R，则说明其右子树所有结点均大于R，可以直接将右子树剪去。
     * 否则说明当前结点值正好在区间内，将其值累加上，并分别对左右子结点调用递归函数即可，
     */
    static int rangeSumBST1(TreeNode root, int l, int r) {
        if (null == root) {
            return 0;
        }
        if (root.val < l) {
            return rangeSumBST(root.right, l, r);
        }
        if (root.val > r) {
            return rangeSumBST(root.left, l, r);
        }
        return root.val + rangeSumBST(root.right, l, r) + rangeSumBST(root.left, l, r);
    }

    private static void testRangeSumBST() {
        TreeNode root = prepareTreeNode();
        int l = 7, r = 15;
        int res = rangeSumBST(root, l, r);
        System.out.println(res);

        int res1 = rangeSumBST1(root, l, r);
        System.out.println(res1);
    }

    public static void main(String[] args) {
        testRangeSumBST();
    }
}
