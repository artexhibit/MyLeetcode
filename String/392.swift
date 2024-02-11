import Foundation

//392. Is Subsequence
//https://leetcode.com/problems/is-subsequence/description/

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var sString = Array(s)
    var tString = Array(t)
    var i = 0
    var j = 0
    
    while i != s.count && j != t.count {
        if sString[i] == tString[j] {
            i += 1
        }
        j += 1
    }
    return i == s.count ? true : false
}

isSubsequence("abc", "cba")
