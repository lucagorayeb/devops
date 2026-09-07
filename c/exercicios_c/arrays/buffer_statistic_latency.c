//
// Created by luca on 8/21/26.
//
#include <stdio.h>
#define ARRAY 10

int main() {
    int array[ARRAY] = {9, 12, 23, 1, 4, 5, 13, 11, 3, 1};
    int bigger = 0, smaller = 0, sum = 0, pivo = 0;
    for (int i = 0; i < ARRAY; i++) {
        smaller = array[i];
        if (smaller > bigger) {
            pivo = bigger;
            bigger = smaller;
            smaller = pivo;
        }
        sum += array[i];
    }

    const int average = sum / ARRAY;
    printf("Average = %d", average);
    printf("\nSmaller = %d", smaller);
    printf("\nBigger = %d\n", bigger);
}