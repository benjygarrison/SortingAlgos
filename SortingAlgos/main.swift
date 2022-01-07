//
//  main.swift
//  SortingAlgos
//
//  Created by Ben Garrison on 1/6/22.
//

import Foundation

/*
 Sorting methods.
 
 MARK: Top 3 to know: Bubble, Merge, Quick
 
 Bubble sort = simplest. Compare items (in array, for example), and "bubble the largest value up by comparing it against every item after."
ex: 5, 4, 3, 2, 1 -> Compare the 5 until it reaches end, keep passing with smaller numbers.
//MARK: Two sweep, internal for loop
 
 */


//Bubble sort code:

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

