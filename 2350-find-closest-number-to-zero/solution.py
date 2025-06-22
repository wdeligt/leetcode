class Solution:
    def findClosestNumber(self, nums: List[int]) -> int:
        closest: int = 200000
        for num in nums:
            distance_abs: int = abs(num)
            if distance_abs < abs(closest):
                closest = num
            if distance_abs == abs(closest):
                closest = max(num, closest)
        return closest
        

        
