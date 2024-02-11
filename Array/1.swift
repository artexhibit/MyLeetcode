import Foundation

//1. Two Sum
//https://leetcode.com/problems/two-sum/description/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indexArray = [Int]()
    
    for firstIndex in 0..<nums.count {
        for secondIndex in firstIndex+1..<nums.count {
            if nums[firstIndex] + nums[secondIndex] == target {
                indexArray.append(firstIndex)
                indexArray.append(secondIndex)
            }
        }
    }
    return indexArray
}

twoSum([4,2,3,11,5], 13)
