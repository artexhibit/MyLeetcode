import Foundation

//205. Isomorphic Strings
//https://leetcode.com/problems/isomorphic-strings/description/

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var sDict = [Character: Character]()
    var tDict = [Character: Character]()
    var sString = Array(s)
    var tString = Array(t)
    
    for i in 0..<s.count {
        if sDict.keys.contains(sString[i]) && sDict[sString[i]] != tString[i] || tDict.keys.contains(tString[i]) && tDict[tString[i]] != sString[i] {
            return false
        }
        sDict[sString[i]] = tString[i]
        tDict[tString[i]] = sString[i]
    }
    return true
}

isIsomorphic("abc", "bca")
