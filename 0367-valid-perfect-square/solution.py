class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        low, high = 0, num
        while low < high:
            mid = (low+high) // 2
            if mid * mid >= num:
                high = mid
            else:
                low = mid + 1

        if high * high == num:
            return True 
        elif high * high > num:
            return False

