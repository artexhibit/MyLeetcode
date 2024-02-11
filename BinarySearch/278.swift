import Foundation

//278. First Bad Version
//https://leetcode.com/problems/first-bad-version/description/

func firstBadVersion(_ n: Int) -> Int {
    var left = 0
    var right = n
    
    while left < right {
        let guess = (left + right) / 2
        
        if isBadVersion(guess) {
            right = guess
        } else {
            left = guess + 1
        }
    }
    return right
}

firstBadVersion(4)
