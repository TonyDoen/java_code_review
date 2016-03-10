package com.zhd.sort;

public class MergeSortApp
{
    
    public static void main(String[] args)
    {
        // int[] test = new int[]{9, 8, 7, 6, 5, 4, 3, 2, 1};
        int[] test = new int[]{9, 8, 7, 6, 5, 4, 3, 2, 1, 8, 7, 6, 5, 4, 3, 2, 1, 8, 7, 6, 5, 4, 3, 2, 1, 8, 7, 6, 5, 4, 3, 2, 1};
        showArray(test);
        doSort(test);
        showArray(test);
        System.exit(0);
    }
    
    static void doSort(int[] arr)
    {
        mergeSort(arr, 0, arr.length - 1);
    }
    
    private static void mergeSort(int[] array, int left, int right)
    {
        if(left >= right)
            return;
        int center = (left + right) / 2;//
        mergeSort(array, left, center);//
        mergeSort(array, center + 1, right);//
        merge(array, left, center, right);//
        // showArray(array);
    }
    
    private static void merge(int[] array, int left, int center, int right)
    {
        int[] tmpArr = new int[array.length];
        int mid = center + 1;
        int third = left;
        int tmp = left;
        while(left <= center && mid <= right)
        {
            if(array[left] <= array[mid])
            {
                tmpArr[third++] = array[left++];
            }
            else
            {
                tmpArr[third++] = array[mid++];
            }
        }
        //
        while(mid <= right)
        {
            tmpArr[third++] = array[mid++];
        }
        while(left <= center)
        {
            tmpArr[third++] = array[left++];
        }
        //
        while(tmp <= right)
        {
            array[tmp] = tmpArr[tmp++];
        }
    }
    
    private static void showArray(int[] arr)
    {
        System.out.print("[ ");
        for(int i = 0; i < arr.length; i++)
        {
            System.out.print(arr[i] + " ");
        }
        System.out.println("]");
    }
}
