class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        low = prices[0]
        high = prices[0]
        profit = high - low
        for price in prices[1:]:
            if price < low:
                low = price
                high = price
            elif price > high:
                high = price
            if high - low > profit:
                profit = high - low
        return profit
