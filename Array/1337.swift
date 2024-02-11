import UIKit

//1337. The K Weakest Rows in a Matrix
//https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/description/

func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    var numDict = [Int: Int]()
    var numArr = [Int]()
    var sum = 0
    
    //1.Block: calculate amount of soldiers in each row
    for (i, m) in mat.enumerated() {
        for n in m {
            sum += n
        }
        numDict[i] = sum
        sum = 0
    }
    //2.Block: sort all row's values to match the requirements
    while !numDict.isEmpty {
        var min = numDict.min { ($0.value, $0.key) < ($1.value, $1.key) }
        numArr.append(min?.key ?? 0)
        numDict.removeValue(forKey: min?.key ?? 0)
    }
    //3.Block: pick k-first results from the array and return them
    numArr.removeLast(numArr.count - k)
    return numArr
}
let mat = [[1,1,0,0,0], [1,1,1,1,0], [1,0,0,0,0], [1,1,0,0,0], [1,1,1,1,1]]

kWeakestRows(mat, 3)
