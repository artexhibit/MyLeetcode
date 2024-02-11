import UIKit

//409. Longest Palindrome
//https://leetcode.com/problems/longest-palindrome/description/

func longestPalindrome(_ s: String) -> Int {
    var str = Array(s)
    var charSet = Set<Character>()
    var length = 0
    
    for s in str {
        if charSet.contains(s) {
            length += 2
            charSet.remove(s)
        } else {
            charSet.insert(s)
        }
    }
    return charSet.count > 0 ? (length + 1) : (length)
}

longestPalindrome("babcba")
