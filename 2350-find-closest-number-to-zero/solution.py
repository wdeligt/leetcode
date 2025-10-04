class Solution:
    def findClosestNumber(self, nums: List[int]) -> int:
        nums_set = set(nums)
        smallest = 100000000
        for num in nums_set:
            if abs(num) == abs(smallest):
                smallest = abs(num)
            elif abs(num) < abs(smallest):
                smallest = num


        return smallest

        

        
