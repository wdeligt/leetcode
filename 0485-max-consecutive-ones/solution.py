class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        n = len(nums)
        max_length = 0
        curr_length = 0
        for i in range(n):
            if nums[i] == 1:
                curr_length += 1
            if nums[i] == 0:
                max_length = max(max_length, curr_length)
                curr_length = 0

        
        return max(max_length, curr_length)
                




        return max_lenght

        
