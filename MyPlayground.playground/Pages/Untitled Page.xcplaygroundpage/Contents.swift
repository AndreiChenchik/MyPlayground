//: [Previous](@previous)

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }

        var profits = [Int]()

        for i in 0..<prices.count-1 {
            guard let maxSellPrice = Array(prices[(i+1)...]).max() else {
                profits.append(0)
                continue
            }

            let possibleProfit = maxSellPrice - prices[i]

            profits.append(possibleProfit > 0 ? possibleProfit : 0)
        }

        if let maxProfit = profits.max() {
            return maxProfit
        } else {
            return 0
        }
    }
}

let solution = Solution()
print(solution.maxProfit([7,1,5,3,6,4]))
//: [Next](@next)
