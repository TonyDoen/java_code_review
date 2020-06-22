package me.meet.leetcode.easy;

import java.util.Arrays;

public final class ValidAnagram {
    private ValidAnagram() {
    }
    /**
     * Given two strings s and t, write a function to determine if t is an anagram of s.
     *
     * For example,
     * s = "anagram", t = "nagaram", return true.
     * s = "rat", t = "car", return false.
     *
     * Note:
     * You may assume the string contains only lowercase alphabets.
     *
     *
     * 题意：
     * 给定两个字符串 s 和 t ，编写一个函数来判断 t 是否是 s 的字母异位词。
     * 示例 1:
     * 输入: s = "anagram", t = "nagaram"
     * 输出: true
     *
     * 示例 2:
     * 输入: s = "rat", t = "car"
     * 输出: false
     *
     * 说明:
     * 你可以假设字符串只包含小写字母。
     *
     * 进阶:
     * 如果输入字符串包含 unicode 字符怎么办？你能否调整你的解法来应对这种情况？
     *
     *
     * 思路：
     * 核心点就在于使用哈希表映射，我们还是用一个数组来代替哈希表，
     * 使用类似方法的题目有
     * Minimum Window Substring 最小窗口子串，
     * Isomorphic Strings 同构字符串，
     * Longest Substring Without Repeating Characters 最长无重复子串 ，
     * Unique Characters of a String 字符串中不同的字符。
     *
     */
    static boolean isAnagram(String s, String t) {
        if (s.length() != t.length()) {
            return false;
        }
        int[] m = new int[26];
        for (int i = 0; i < s.length(); i++) {
            int idx = s.charAt(i) - 'a';
            m[idx]++;
        }
        for (int i = 0; i < t.length(); i++) {
            int idx = t.charAt(i) - 'a';
            if (--m[idx] < 0) {
                return false;
            }
        }
        return true;
    }

    static boolean isAnagram2(String s, String t) {
        return Arrays.equals(hashArray(s), hashArray(t));
    }

    private static int[] hashArray(String s) {
        int[] sa = new int[26];
        for (int i = s.length() - 1; i >= 0; i--) {
            sa[s.charAt(i) - 'a']++;
        }
        return sa;
    }

    private static void testIsAnagram() {
        String s = "anagram", t = "nagaram";
        boolean result = isAnagram(s, t);
        System.out.println(result);

        result = isAnagram2(s, t);
        System.out.println(result);
    }

    public static void main(String[] args) {
        testIsAnagram();
    }
}
