package me.meet.leetcode.medium;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class CloneGraph {
    private CloneGraph() {
    }

    static class Node {
        public int val;
        public List<Node> neighbors;

        public Node() {
            val = 0;
            neighbors = new ArrayList<Node>();
        }

        public Node(int _val) {
            val = _val;
            neighbors = new ArrayList<Node>();
        }

        public Node(int _val, ArrayList<Node> _neighbors) {
            val = _val;
            neighbors = _neighbors;
        }
    }

    /**
     * Clone Graph
     * Given a reference of a node in a connected undirected graph, return a deep copy (clone) of the graph. Each node in the graph contains a val (int) and a list (List[Node]) of its neighbors.
     *
     * 1 - 2
     * |   |
     * 4 - 3
     *
     * Input:
     * {"$id":"1","neighbors":[{"$id":"2","neighbors":[{"$ref":"1"},{"$id":"3","neighbors":[{"$ref":"2"},{"$id":"4","neighbors":[{"$ref":"3"},{"$ref":"1"}],"val":4}],"val":3}],"val":2},{"$ref":"4"}],"val":1}
     *
     * Explanation:
     * Node 1's value is 1, and it has two neighbors: Node 2 and 4.
     * Node 2's value is 2, and it has two neighbors: Node 1 and 3.
     * Node 3's value is 3, and it has two neighbors: Node 2 and 4.
     * Node 4's value is 4, and it has two neighbors: Node 1 and 3.
     *
     * Note:
     * The number of nodes will be between 1 and 100.
     * The undirected graph is a simple graph, which means no repeated edges and no self-loops in the graph.
     * Since the graph is undirected, if node p has node q as neighbor, then node q must have node p as neighbor too.
     * You must return the copy of the given node as a reference to the cloned graph.
     */
    /**
     *  克隆无向图
     * 1、递归实现
     * 2、具体实现为：复制原节点，挂接邻居节点的复制节点到原节点的复制节点下
     * 3、怎么复制邻居节点呢？递归调用复制原节点的函数
     * 4、递归出口： 节点为null || 已经复制过该节点了
     */
    static Node cloneGraph(Node node) {
        if (node == null) {
            return null;
        }

        // Map中key不重写hashCode函数的话，默认使用Object的hashCode函数，比较的是对象的地址
        // 而使用对象地址作为hashCode的值，符合此处的诉求，所以Node对象不需要重写hashCode、equals
        Map<Node, Node> cache = new HashMap<>();

        return cloneGraph(node, cache);
    }

    private static Node cloneGraph(Node node, Map<Node, Node> cache) {
        if (node == null) {
            return null;
        }
        Node valueNode = cache.get(node);
        if (valueNode != null) {
            return valueNode;
        }

        // 复制节点本身
        Node copy = new Node(node.val);
        cache.put(node, copy);

        // 复制邻居节点，并挂接到copy节点上
        for (Node cur : node.neighbors) {
            // 复制原节点的邻居节点挂接到复制节点的邻居列表中
            copy.neighbors.add(cloneGraph(cur, cache));
        }

        // 返回复制节点
        return copy;
    }

    private static void testCloneGraph() {
        /**
         * 1 - 2
         * |   |
         * 4 - 3
         */
        Node _1 = new Node(1);
        Node _2 = new Node(2);
        Node _3 = new Node(3);
        Node _4 = new Node(4);
        _1.neighbors.add(_2);
        _1.neighbors.add(_4);
        _2.neighbors.add(_1);
        _2.neighbors.add(_3);
        _3.neighbors.add(_2);
        _3.neighbors.add(_4);
        _4.neighbors.add(_1);
        _4.neighbors.add(_3);

        Node c1 = cloneGraph(_1);
        System.out.println(c1);
    }

    public static void main(String[] args) {
        testCloneGraph();
    }

}
