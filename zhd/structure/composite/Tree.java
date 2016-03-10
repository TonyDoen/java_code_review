package com.zhd.structure.composite;

public class Tree
{
    TreeNode root = null;
    
    public Tree(String name)
    {
        root = new TreeNode(name);
    }
}
