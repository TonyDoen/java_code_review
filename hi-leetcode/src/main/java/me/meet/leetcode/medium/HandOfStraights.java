package me.meet.leetcode.medium;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class HandOfStraights {
    private HandOfStraights() {
    }

    /**
     * Alice has a hand of cards, given as an array of integers.
     * Now she wants to rearrange the cards into groups so that each group is size W, and consists of W consecutive cards.
     * Return true if and only if she can.
     *
     * Example 1:
     * Input: hand = [1,2,3,6,2,3,4,7,8], W = 3
     * Output: true
     *
     * Explanation:
     * Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8]
     *
     * Example 2:
     * Input: hand = [1,2,3,4,5], W = 4
     * Output: false
     *
     * Explanation:
     * Alice's hand can't be rearranged into groups of 4
     *
     * Note:
     * 1 <= hand.length <= 10000
     * 0 <= hand[i] <= 10^9
     * 1 <= W <= hand.length
     */
    /**
     * 一手顺子牌
     * 这里给了我们一个W，规定了顺子的最小长度，那么我们就拿例子1来模拟下打牌吧，首先摸到了牌之后，肯定要先整牌，按从小到大的顺序排列，这里我们就不考虑啥3最大，4最小啥的，就统一按原始数字排列吧：1 2 2 3 3 4 6 7 8
     * 下面要来组顺子，既然这里是3张可连，那么我们从最小的开始连呗。其实这道题还是简化了许多，真正打牌的时候，即便是3张起连，那么连4张5张都是可以的，可以这里限定了只能连W张，就使得题目变简单了。我们用贪婪算法就可以了，首先从1开始，那么一定得有2和3，才能起连，若少了任何一个，都可以直接返回false，好那么取出这三张后
     */
    static boolean isNStraightHand(int[] hand, int w) {
        if (hand == null || hand.length == 0 || hand.length % w != 0) {
            return false;
        }
        // 数组进行排序预处理，并将元素及其出现次数存储在 map 中
        Arrays.sort(hand);
        Map<Integer, Integer> map = new HashMap<>();
        for (int i : hand) {
            map.put(i, map.getOrDefault(i, 0) + 1);
        }
        for (int h : hand) {
            if (map.get(h) > 0) {
                // 判断 map 中是否有足够的元素构成顺子
                for (int j = 0; j < w; j++) {
                    if (map.getOrDefault(h + j, 0) > 0) {
                        map.put(h + j, map.get(h + j) - 1);
                    } else {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private static void testIsNStraightHand() {
        int[] hand = new int[]{1, 2, 3, 6, 2, 3, 4, 7, 8};
        int w = 3;
        System.out.println(isNStraightHand(hand, w));
    }

    public static void main(String[] args) {
        testIsNStraightHand();
    }
}
