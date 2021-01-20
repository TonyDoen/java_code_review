package me.meet.leetcode.medium;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class FindAllAnagramsInAString {
    private FindAllAnagramsInAString() {
    }

    /**
     * 438. Find All Anagrams in a String
     * Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.
     * Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.
     * The order of output does not matter.
     *
     * example 1:
     * Input: s: "cbaebabacd" p: "abc"
     *
     * Output: [0, 6]
     *
     * Explanation:
     * The substring with start index = 0 is "cba", which is an anagram of "abc".
     * The substring with start index = 6 is "bac", which is an anagram of "abc".
     *
     *
     * example 2:
     * Input: s: "abab" p: "ab"
     *
     * Output: [0, 1, 2]
     *
     * Explanation:
     * The substring with start index = 0 is "ab", which is an anagram of "ab".
     * The substring with start index = 1 is "ba", which is an anagram of "ab".
     * The substring with start index = 2 is "ab", which is an anagram of "ab".
     */

    /**
     * 题意：
     * 给定一个字符串s, 一个非空字符串p, 找到s中所有是p的字母异位词的子串, 返回这些字串的起始索引。
     * 字符串只包含小写英文字母，并且字符串s和p的长度都不超过20100
     * 不考虑答案输出顺序
     *
     * 注意：
     * 字母异位词：字母相同，但是排序不一定相同的字符串
     *
     * 思路：
     * 滑动窗口
     */
    static List<Integer> findAnagrams(String s, String t) {
        Map<Character, Integer> need = new HashMap<>(), window = new HashMap<>();
        for (Character c : t.toCharArray()) {
            need.put(c, need.getOrDefault(c, 0) + 1);
        }

        int left = 0, right = 0, valid = 0;
        List<Integer> res = new ArrayList<>();
        while (right < s.length()) {
            char c = s.charAt(right);
            right++;

            // 进行窗口内数据的一系列更新
            Integer rCnt = need.get(c);
            if (null != rCnt) {
                window.put(c, window.getOrDefault(c, 0) + 1);
                if (rCnt.equals(window.get(c))) {
                    valid++;
                }
            }

            // 判断左侧窗口是否收缩
            while (right - left >= t.length()) {
                // 当窗口符合条件，把起始索引加入res
                if (valid == need.size()) {
                    res.add(left);
                }

                char d = s.charAt(left);
                left++;

                // 进行窗口内数据的一系列更新
                Integer lCnt = need.get(d);
                if (null != lCnt) {
                    if (lCnt.equals(window.get(d))) {
                        valid--;
                    }
                    window.put(d, window.getOrDefault(d, 0) - 1);
                }
            }
        }
        return res;
    }

    private static void testFindAnagrams() {
        String s = "cbaebabacdabc", t = "abc";
        List<Integer> res = findAnagrams(s, t);
        System.out.println(res);
    }

    public static void main(String[] args) {
        testFindAnagrams();
    }
}
