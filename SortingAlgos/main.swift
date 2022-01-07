//
//  main.swift
//  SortingAlgos
//
//  Created by Ben Garrison on 1/6/22.
//

import Foundation

/*
 Sorting methods.
 MARK: Top 3 to know: Bubble (slowest), Merge (middle), Quick (fastest)
 
 MARK: What to know: runtimes, which is fastest/slowest
 
 */


 /*
 MARK: Bubble Sort
 Bubble sort = simplest. Compare items (in array, for example), and "bubble the largest value up by comparing it against every item after."
ex: 5, 4, 3, 2, 1 -> Compare the 5 until it reaches end, keep passing with smaller numbers.
//MARK: Two sweep, internal for loop -> O(n^2)
 */

class BubbleSort {
    func sort(_ array: [Int]) -> [Int] {
        var arr = array
        let n = arr.count
        
        for i in 0..<n-1 {
            for j in 0..<n-i-1 {
                if arr[j] > arr[j+1] {
                    //swap
                    let temp = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = temp
                }
            }
        }
        return arr
    }
}

let bubbleSort = BubbleSort()
print("A sorted array: \(bubbleSort.sort([5, 4, 6, 2, 1]))")


/*
 MARK: Merge Sort
 Divide and conquer, split then merge
    - Step 1 ("Divide/Split"): keep dividing array until it reaches its smallest form
    -Step 2 ("Conquer/Merge"): recombine and sort as you go
              
               |12|2|34|4|8|19|21|
                  /         \
             |12|2|34|4|  |8|19|21|
              /     \        \     \
           |2|12| |34|4|   |8|19| |21|
            /  |    |   \    |  \    \
         |2| |12| |34| |4| |8| |19| |21|
           \   |    \   /    |  /    /
           |2|12|  |4|34|   |8|19| |21|
              \       /        /     /
            |2|4|12|34|     |8|19|21|
                   \          /
               |2|4|8|12|19|21|34|
 
 O(n log n) : because you keep halving (log) and merging (log) recursively
 */



/*
 MARK: Quick Sort
 Create a "pivot" point (likely near the center), and pivot variables around it.
 Set pointers on left and right. Iterate through and compare them to pivot value (and each other), and swap from left-to-right or right-to-left where appropriate.
 Eventually, you'll have 2 arrays. Repeat until you have progressively smaller arrays, and then recombine--similar to merge sort.
 MARK: O(n log n) -> FASTEST of 3 sort algos.
 
 */
