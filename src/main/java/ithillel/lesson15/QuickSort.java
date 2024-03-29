package ithillel.lesson15;

public class QuickSort {
        public static void sort(int[] arr, int left, int right) {
            if (left < right) {
                int pivotIndex = partition(arr, left, right);
                sort(arr, left, pivotIndex - 1);
                sort(arr, pivotIndex + 1, right);
            }
        }

        private static int partition(int[] arr, int left, int right) {
            int pivotValue = arr[right];
            int i = left - 1;
            for (int j = left; j < right; j++) {
                if (arr[j] < pivotValue) {
                    i++;
                    swap(arr, i, j);
                }
            }
            swap(arr, i + 1, right);
            return i + 1;
        }

        private static void swap(int[] arr, int i, int j) {
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }
}
