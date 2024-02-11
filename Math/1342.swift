import UIKit

//1342. Number of Steps to Reduce a Number to Zero
//https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/description/

func numberOfSteps(_ num: Int) -> Int {
    var number = num
    var steps = 0
    
    while number != 0 {
        number % 2 == 0 ? (number /= 2) : (number -= 1)
        steps += 1
    }
    return steps
}

numberOfSteps(10)
