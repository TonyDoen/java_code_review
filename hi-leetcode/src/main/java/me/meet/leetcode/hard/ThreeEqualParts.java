package me.meet.leetcode.hard;

import java.util.Arrays;

public final class ThreeEqualParts {
    private ThreeEqualParts() {
    }

    /**
     * Given an array `arr` of `0`s and `1`s, divide the array into 3 non-empty parts such that all of these parts represent the same binary value.
     * If it is possible, return any [i, j] with i+1 < j, such that:
     *
     * arr[0], arr[1], ..., arr[i] is the first part;
     * arr[i+1], arr[i+2], ..., arr[j-1] is the second part, and
     * arr[j], arr[j+1], ..., arr[arr.length - 1] is the third part.
     * arrll three parts have equal binary value.
     * If it is not possible, return [-1, -1].
     *
     * note that the entire part is used when considering what binary value it represents.  For example, [1,1,0] represents 6 in decimal, not 3.  arrlso, leading zeros are allowed, so [0,1,1] and [1,1] represent the same value.
     *
     * Example 1:
     * Input: [1,0,1,0,1]
     * Output: [0,3]
     *
     * Example 2:
     * Input: [1,1,0,1,1]
     * Output: [-1,-1]
     *
     * note:
     * 3 <= arr.length <= 30000
     * arr[i] == 0 or arr[i] == 1
     */
    /**
     * 这道题给了我们一个只有0和1的数组，让将其分为三段，使得每一段组成的二进制的数相同，注意数组左边的数字是高位，且开头可能会存在多余的0。最开始博主使用的方法是最直接的暴力方法，遍历所有的分成三段的可能，然后将每一段的二进制都计算出来比较是否相等，结果毫不意外的超时了，丝毫没有尊重这道题的 Hard 标签。仔细分析以下题目，既然要分成三段，且二进制数字相等，那么这三个二进制数中1的个数一定是相等的，因为转十进制的时候，只有1才会累加，而由于开头0的存在，所以0的个数不一定相同。那么1的个数就是突破口了，先遍历整个数组，统计出1的个数。假如数组中没有1的话，那就简单了，随便分三段都行了，因为都是0，所以返回 {0, n-1} 就行。再来想一下，假如1的个数不是3的个数，就绝无可能分为相等值的三段，直接返回 {-1,-1} 即可。假如个数是3的倍数，也不表示一定能成功分为3段，但如果能分的话，每段的1的个数一定是 cntOne/3，现在从末尾开始，找出正好有 cntOnt/3 个的位置 idxthird，此时虽然范围 [idxthird, n-1] 不一定是第三段，因为前面可能有0，但如果能成功分的话，其1的个数及位置一定是正确的。此时要做的是，从开头0开始，略去连续0，然后和 [idxthird, n-1] 区间对比，一旦有不一样的位置，说明无法正确分，返回 {-1,-1}。若能找到相同的一段话，说明此时第一段和第三段存在了，再来检测第二段，此时中间段的1的个数已经确定为 cntOne/3 了，只需要再确定其位置是否一样就可以了，其实主要比的是1的位置，因为开头连续0可以略去，就算每个区间末尾还有0，这些0是可以移动到下一个区间的开头的，从而可以保证对应的1的位置还是一样的
     */
//    static int[] threeEqualParts(int[] arr) {
//        int cntOne = 0, n = arr.length;
//        for (int num : arr) {
//            if (1 == num) {
//                cntOne++;
//            }
//        }
//
//        if (0 == cntOne) {
//            return new int[]{0, n, -1};
//        }
//        if (0 != cntOne % 3) {
//            return new int[]{-1, -1};
//        }
//        int idxthird = 0, cnt = 0;
//        for (int i = n - 1; i >= 0; i--) {
//            if (0 == arr[i]) {
//                continue;
//            }
//            cnt++;
//            if (cnt == cntOne / 3) {
//                idxthird = i;
//                break;
//            }
//        }
//        int idx1 = helper(arr, 0, idxthird);
//        if (idx1 < 0) {
//            return new int[]{-1, -1};
//        }
//        int idx2 = helper(arr, idx1 + 1, idxthird);
//        if (idx2 < 0) {
//            return new int[]{-1, -1};
//        }
//
//        return new int[]{idx1, idx2 + 1};
//    }
//
//    private static int helper(int[] arr, int left, int right) {
//        while (0 == arr[left]) {
//            left++;
//        }
//        while (right < arr.length) {
//            if (arr[left] != arr[right]) {
//                return -1;
//            }
//            left++;
//            right++;
//        }
//        return left - 1;
//    }

    /**
     * 开始的操作还是一样的，统计1的个数 cntOne，然后计算出每段的1的个数 k=cntOne/3，再用三个变量 start, mid, end 来标记每段的第一个1的位置，因为想要跳过开头的连续0。再用另一个变量 cnt 来重新在遍历的过程中统计1的个数，在 cnt 为0的时候，一直更新 start，这样可以跳过开头连续0，当 cnt=k+1 时，更新 mid 为i，因为这是第二段中第一个1的位置，当 cnt=2*k+1 时，更新 end 为i，因为这是第三段中第一个1的位置，然后此时验证三个区间，即 A[start]，A[mid]，和 A[end] 必须相等，然后三个指针同时向后移动一位，若有任何不相等，就 break 掉，最后看若 end 等于n，说明三段区间中1的位置都相等，是符合题意的，返回 {start-1, mid}，否则返回 {-1,-1} 即可，
     */

//    static int[] threeEqualParts(int[] arr) {
//        int cntOne = 0, n = arr.length;
//        for (int num : arr) {
//            if (1 == num) {
//                cntOne++;
//            }
//        }
//        if (0 == cntOne) {
//            return new int[]{0, n, -1};
//        }
//        if (0 != cntOne % 3) {
//            return new int[]{-1, -1};
//        }
//        int k = cntOne / 3, start = 0, mid = 0, end = 0, cnt = 0;
//        for (int i = 0; i < n; i++) {
//            if (0 == arr[0]) {
//                continue;
//            }
//            if (0 == cnt) {
//                start = i;
//            }
//            cnt++;
//            if (cnt == k + 1) {
//                mid = i;
//            }
//            if (cnt == 2 * k + 1) {
//                end = i;
//                break;
//            }
//        }
//        while (end < n && arr[start] == arr[mid] && arr[mid] == arr[end]) {
//            start++;
//            mid++;
//            end++;
//        }
//        if (n == end) {
//            return new int[]{start - 1, mid};
//        }
//        return new int[]{-1, -1};
//    }
    static int[] threeEqualParts(int[] arr) {
        int[] tmp = new int[]{-1, -1};
        int n = arr.length;

        int s = 0;
        for (int x : arr) s += x;
        if (s % 3 != 0) return tmp;
        int t = s / 3;
        if (t == 0)
            return new int[]{0, n - 1};

        int i1 = -1, j1 = -1, i2 = -1, j2 = -1, i3 = -1, j3 = -1;
        int su = 0;
        for (int i = 0; i < n; ++i) {
            if (arr[i] == 1) {
                su += 1;
                if (su == 1) i1 = i;
                if (su == t) j1 = i;
                if (su == t + 1) i2 = i;
                if (su == 2 * t) j2 = i;
                if (su == 2 * t + 1) i3 = i;
                if (su == 3 * t) j3 = i;
            }
        }

        // the array is in the form W [i1, j1] X [i2, j2] Y [i3, j3] Z
        // where [i1, j1] is a block of 1s, etc.
        int[] part1 = Arrays.copyOfRange(arr, i1, j1 + 1);
        int[] part2 = Arrays.copyOfRange(arr, i2, j2 + 1);
        int[] part3 = Arrays.copyOfRange(arr, i3, j3 + 1);

        if (!Arrays.equals(part1, part2)) return tmp;
        if (!Arrays.equals(part1, part3)) return tmp;

        // x, y, z: the number of zeros after part 1, 2, 3
        int x = i2 - j1 - 1;
        int y = i3 - j2 - 1;
        int z = arr.length - j3 - 1;

        if (x < z || y < z) return tmp;
        return new int[]{j1 + z, j2 + z + 1};
    }

    private static void testThreeEqualParts() {
        int[] arr = new int[]{1, 0, 1, 0, 1};
        int[] res = threeEqualParts(arr);
        for (int i : res) {
            System.out.println(i);
        }
    }

    static int[] threeEqualParts1(int[] arr) {
        int count = 0;
        int[] index = new int[arr.length];
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == 1) {
                index[count] = i;
                count++;
            }
        }
        if (count == 0) {
            return new int[]{0, arr.length - 1};
        }
        if (count % 3 != 0) {
            return new int[]{-1, -1};
        } else {
            int endL = arr.length - index[count - 1] - 1; //末尾0的个数
            int firstEnd = index[count / 3 - 1];
            int secondEnd = index[2 * count / 3 - 1];
            int firstStart = index[0];
            int secondStart = index[count / 3];
            int thirdStart = index[count * 2 / 3];
            if (secondStart - firstEnd - 1 < endL || thirdStart - secondEnd < endL) {
                return new int[]{-1, -1};
            }
            for (int i = thirdStart; i <= arr.length - 1; i++) {
                if (arr[i] != arr[i - thirdStart + firstStart] || arr[i] != arr[i - thirdStart + secondStart]) {
                    return new int[]{-1, -1};
                }
            }
            return new int[]{firstEnd + endL, secondEnd + endL + 1};
        }
    }

    private static void testThreeEqualParts1() {
        int[] arr = new int[]{1, 0, 1, 0, 1};
        int[] res = threeEqualParts1(arr);
        for (int i : res) {
            System.out.println(i);
        }
    }

    public static void main(String[] args) {
        testThreeEqualParts();
        testThreeEqualParts1();
    }
}
