import Foundation

//121. Best Time to Buy and Sell Stock
//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

func maxProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0
    var i = 0
    var j = 1
    
    while j < prices.count {
        if prices[i] < prices[j] {
            var midProfit = prices[j] - prices[i]
            
            if maxProfit < midProfit {
                maxProfit = midProfit
            }
        } else {
            i = j
        }
        j += 1
    }
    return maxProfit
}

maxProfit([1,5,6,7])
