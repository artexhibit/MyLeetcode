import Foundation

//3. Longest Substring Without Repeating Characters
//https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

func lengthOfLongestSubstringTwo(_ s: String) -> Int {
    var charArr = [Character]()
    //define the longest amount of characters in an array in a moment we found a duplicate char
    var counter = 0
    //maximum amount of uniq characters
    var max = 0
    
    //start iterate through each string character
    for c in s {
        //if the array already has the character we remove all characters from the start (0) till the character index from the array. Then append new character and assign counter to the array length
        if charArr.contains(c) {
            let index = charArr.firstIndex(of: c)
            var temp = 0
            
            while temp <= index! {
                charArr.remove(at: 0)
                temp += 1
            }
            charArr.append(c)
            counter = charArr.count
            // if the array not contain the character we simply add it and increase the counter
        } else {
            charArr.append(c)
            counter += 1
        }
        //after each iteration circle we check counter and max. If counter is bigger, then we assign max to counter amount
        if counter > max {
            max = counter
        }
    }
    return max
}

lengthOfLongestSubstringTwo("pwwkew")
