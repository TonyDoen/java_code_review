package org.zhd.foundation.gof23.structure.composite;

public class TestTree {
    public static void main(String[] args) {
        Tree tree = new Tree("A");
        TreeNode nodeB = new TreeNode("B");
        TreeNode nodeC = new TreeNode("C");

        nodeB.add(nodeC);
        tree.root.add(nodeB);

        System.out.println("build the tree finished.");
    }
    // 组合模型
    // 组合模型又叫做部分-整体模型，在处理类似树形结构的问题时比较方便
    // 使用场景：将多个对象组合在一起的操作，常用作表示树形结构，例如，二叉树，树
}
