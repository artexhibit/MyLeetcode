import UIKit

//724. Find Pivot Index
//https://leetcode.com/problems/find-pivot-index/description/

func pivotIndex(_ nums: [Int]) -> Int {
    var left = 0
    var sum = 0
    
    for num in nums {
        sum += num
    }
    
    for i in 0..<nums.count {
        var right = sum - nums[i] - left
        
        if right == left {
            return i
        }
        left += nums[i]
    }
    return -1
}

pivotIndex([1,7,3,6,5,6])
