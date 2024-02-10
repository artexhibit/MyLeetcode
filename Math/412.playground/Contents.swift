import UIKit

//412. Fizz Buzz
//https://leetcode.com/problems/fizz-buzz/description/

func fizzBuzz(_ n: Int) -> [String] {
    var results = [String]()
    for i in 1...n {
        if (i % 3 == 0 && i % 5 == 0) {
            results.append("FizzBuzz")
        } else if i % 3 == 0 {
            results.append("Fizz")
        } else if i % 5 == 0  {
            results.append("Buzz")
        } else {
            results.append(String(i))
        }
    }
    return results
}

fizzBuzz(3)
