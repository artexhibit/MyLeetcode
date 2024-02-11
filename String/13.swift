import Foundation

//13. Roman to Integer
//https://leetcode.com/problems/roman-to-integer/description/

func romanToInt(_ s: String) -> Int {
    var sum = 0
    var i = 0
    let s = Array(s)
    let romanNums: [Character : Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    while i < s.count {
        if i == s.count - 1 || romanNums[s[i]]! >= romanNums[s[i + 1]]! {
            sum += romanNums[s[i]]!
        } else {
            sum -= romanNums[s[i]]!
        }
        i += 1
    }
    return sum
}

romanToInt("MCMXCIV")
