#include <iostream>
#include <chrono>
#include <cstdlib> // For rand() and srand()
#include <ctime>   // For seeding random number generator
using namespace std;

// Function to swap two elements
void swap(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}

// Partition function
int partition(int array[], int low, int high) {
    int pivot = array[high]; // Choose the pivot as the last element
    int i = low - 1;

    for (int j = low; j < high; ++j) {
        if (array[j] <= pivot) {
            ++i;
            swap(array[i], array[j]);
        }
    }
    swap(array[i + 1], array[high]);
    return i + 1;
}

// Quicksort function
void quicksort(int array[], int low, int high) {
    if (low < high) {
        int pi = partition(array, low, high);
        quicksort(array, low, pi - 1);
        quicksort(array, pi + 1, high);
    }
}

// Function to print the array (only for small sizes to avoid clutter)
void printArray(int array[], int size) {
    for (int i = 0; i < size; ++i) {
        cout << array[i] << " ";
    }
    cout << endl;
}

int main() {
    srand(time(0)); // Seed random number generator

    for (int size = 10000; size <= 100000; size += 10000) {
        // Dynamically allocate array of current size
        int *data = new int[size];
        
        // Populate array with random integers
        for (int i = 0; i < size; ++i) {
            data[i] = rand() % 100000; // Random number between 0 and 99,999
        }

        cout << "Array Size: " << size << endl;

        // Measure time taken by Quicksort
        chrono::high_resolution_clock::time_point start = chrono::high_resolution_clock::now();
        quicksort(data, 0, size - 1);
        chrono::high_resolution_clock::time_point end = chrono::high_resolution_clock::now();


        // Calculate and print the time taken
        chrono::microseconds duration = chrono::duration_cast<chrono::microseconds>(end - start);
        cout << "Time taken by Quicksort: " << duration.count() << " microseconds" << endl;
        cout << "---------------------------------" << endl;

        // Free allocated memory
        delete[] data;
    }

    return 0;
}

