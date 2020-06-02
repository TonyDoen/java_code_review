package me.meet.leetcode.medium;

import java.util.LinkedList;

public final class AddTwoNumbersII {
    private AddTwoNumbersII() {}
    static class ListNode {
       int val;
       ListNode next;
       ListNode(int x) { val = x; }
   }

    /**
     * Add Two Numbers II
     *
     * You are given two linked lists representing two non-negative numbers. The most significant digit comes first and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
     * You may assume the two numbers do not contain any leading zero, except the number 0 itself.
     *
     * Follow up:
     * What if you cannot modify the input lists? In other words, reversing the lists is not allowed.
     *
     * Example:
     * Input: (7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
     * Output: 7 -> 8 -> 0 -> 7
     *
     * 题意：两个数字相加之二
     * 思路：
     * 如果我们给链表翻转一下的话就跟之前的题目一样了，这里我们来看一些不修改链表顺序的方法。由于加法需要从最低位开始运算，而最低位在链表末尾，链表只能从前往后遍历，没法取到前面的元素，那怎么办呢？我们可以利用栈来保存所有的元素，然后利用栈的后进先出的特点就可以从后往前取数字了，我们首先遍历两个链表，将所有数字分别压入两个栈s1和s2中，我们建立一个值为0的res节点，然后开始循环，如果栈不为空，则将栈顶数字加入sum中，然后将res节点值赋为sum%10，然后新建一个进位节点head，赋值为sum/10，如果没有进位，那么就是0，然后我们head后面连上res，将res指向head，这样循环退出后，我们只要看res的值是否为0，为0返回res->next，不为0则返回res即可，
     */
    static ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        LinkedList<Integer> st1 = new LinkedList<>(), st2 = new LinkedList<>();
        for (; null != l1; ) {
            st1.push(l1.val);
            l1 = l1.next;
        }
        for (; null != l2; ) {
            st2.push(l2.val);
            l2 = l2.next;
        }
        ListNode result = null;
        for (int sum = 0; !st1.isEmpty() || !st2.isEmpty() || sum > 0; ) {
            if (!st1.isEmpty()) {
                sum += st1.pop();
            }
            if (!st2.isEmpty()) {
                sum += st2.pop();
            }
            ListNode tmp = new ListNode(sum % 10);
            tmp.next = result;
            result = tmp;
            sum /= 10;
        }
        return result;
    }

    private static void testAddTwoNumber() {
        // (7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
        ListNode _3 = new ListNode(3);
        ListNode _4 = new ListNode(4);
        _4.next = _3;
        ListNode _2 = new ListNode(2);
        _2.next = _4;
        ListNode _7 = new ListNode(7);
        _7.next = _2;

        ListNode _4u = new ListNode(4);
        ListNode _6 = new ListNode(6);
        _6.next = _4u;
        ListNode _5 = new ListNode(5);
        _5.next = _6;

        ListNode result = addTwoNumbers(_7, _5);
        for (; null != result; ) {
            System.out.print(result.val);
            result = result.next;
        }
        System.out.println();
    }

    public static void main(String[] args) {
        testAddTwoNumber();
    }
}
