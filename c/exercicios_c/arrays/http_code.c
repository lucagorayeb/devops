#include <stdio.h>
#define ARRAY 10

int main() {
    int array[ARRAY] = {200, 301, 504, 400, 502, 500, 303, 105, 200, 400};
    int count = 0;
    int j = 0;
    for (int i = 0; i < ARRAY; i++) {
         if (array[i] >= 500) {
             count++;
         }
    }

    int new_array[count];
    while (j < count) {
        for (int i = 0; i < ARRAY; i++) {
            if (array[i] >= 500) {
                new_array[j] = array[i];
                j++;
            }
        }
    }

    for (int i = 0; i < count; i++) {
        printf("array[%d] = %d\n", i, new_array[i]);
    }
}