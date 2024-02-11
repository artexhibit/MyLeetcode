import Foundation

//383. Ransom Note
//https://leetcode.com/problems/ransom-note/description/

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var m = magazine
    
    for c in ransomNote {
        if m.contains(c) {
            let indexM = m.firstIndex(of: c)!
            m.remove(at: indexM)
        } else {
            return false
        }
    }
    return true
}

canConstruct("aa", "aab")
