import UIKit

//704. Binary Search
//https://leetcode.com/problems/binary-search/description/

func binarySearch(_ arr: [Int], _ number: Int) -> Int? {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        var middle = (left + right) / 2
        var guess = arr[middle]
        
        if guess == number {
            return middle
        } else if guess > number {
            right = middle - 1
        } else {
            left = middle + 1
        }
    }
    return nil
}
binarySearch([1,3,5,7,9], 3)
