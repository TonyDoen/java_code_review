package me.meet.leetcode.medium;

import java.util.LinkedList;
import java.util.List;

public final class CompleteBinaryTreeInserter {
    private CompleteBinaryTreeInserter() {
    }

    static class TreeNode {
        int val;
        TreeNode left;
        TreeNode right;

        TreeNode(int val) {
            this.val = val;
        }
    }

    /**
     * Complete Binary Tree Inserter 完全二叉树插入器
     *
     * A complete binary tree is a binary tree in which every level, except possibly the last, is completely filled, and all nodes are as far left as possible.
     * Write a data structure CBTInserter that is initialized with a complete binary tree and supports the following operations:
     * 1. CBTInserter(TreeNode root) initializes the data structure on a given tree with head node root;
     * 2. CBTInserter.insert(int v) will insert a TreeNode into the tree with value node.val = v so that the tree remains complete, and returns the value of the parent of the inserted TreeNode;
     * 3. CBTInserter.get_root() will return the head node of the tree.
     *
     * Example 1:
     * Input: inputs = ["CBTInserter","insert","get_root"], inputs = [[[1]],[2],[]]
     * Output: [null,1,[1,2]]
     *
     * Example 2:
     * Input: inputs = ["CBTInserter","insert","insert","get_root"], inputs = [[[1,2,3,4,5,6]],[7],[8],[]]
     * Output: [null,3,4,[1,2,3,4,5,6,7,8]]
     *
     * Note:
     * 1. The initial given tree is complete and contains between 1 and 1000 nodes.
     * 2. CBTInserter.insert is called at most 10000 times per test case.
     * 3. Every value of a given or inserted node is between 0 and 5000.
     *
     *
     * 题意：完全二叉树插入器
     */

    static class CBTInserter3 {
        final List<TreeNode> tree;
        CBTInserter3(TreeNode root) {
            this.tree = new LinkedList<>();

            tree.add(root);
            for (int i = 0; i < tree.size(); i++) {
                TreeNode it = tree.get(i);
                if (null != it.left) {
                    tree.add(it.left);
                }
                if (null != it.right) {
                    tree.add(it.right);
                }
            }
        }

        int insert(int v) {
            TreeNode vt = new TreeNode(v);
            int n = tree.size();

            tree.add(vt);
            TreeNode tmp = tree.get((n-1)/2);
            if (n % 2 == 1) {
                tmp.left = vt;
            } else {
                tmp.right = vt;
            }
            return tmp.val;
        }

        TreeNode getRoot() {
            return tree.get(0);
        }
    }

    private static void testCBTInserter3() {
        CBTInserter3 cbti2 = new CBTInserter3(new TreeNode(1));

        int[] arr = new int[]{2, 3, 4, 5, 6};
        for (int i : arr) {
            cbti2.insert(i);
        }
        cbti2.insert(7);
        cbti2.insert(8);
        TreeNode res2 = cbti2.getRoot();
        System.out.println(res2);
    }

    public static void main(String[] args) {
        testCBTInserter3();
    }
}
