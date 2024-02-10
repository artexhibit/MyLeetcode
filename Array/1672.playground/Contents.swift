import UIKit

//1672. Richest Customer Wealth
//https://leetcode.com/problems/richest-customer-wealth/description/

func maximumWealth(_ accounts: [[Int]]) -> Int {
    var maxWealth = 0
    var sumOfWealthInEachBank = 0
    
    accounts.forEach { account in
        for money in account {
            sumOfWealthInEachBank += money
        }
        if sumOfWealthInEachBank > maxWealth {
            maxWealth = sumOfWealthInEachBank
        }
        sumOfWealthInEachBank = 0
    }
    return maxWealth
}

maximumWealth([[1,2,3,4,12],[3,2,1], [5,5,5]])
