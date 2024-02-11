import UIKit

//1480. Running Sum of 1d Array
//https://leetcode.com/problems/running-sum-of-1d-array/description/

func runningSum(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    var sum = 0
    
    for n in nums {
        sum += n
        result.append(sum)
    }
    return result
}

runningSum([1,2,3,4])
