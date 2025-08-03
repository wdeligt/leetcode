class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        sorted_nums = sorted(nums)
        # missing number is in the middle
        for i in range(1, len(nums)):
            diff = sorted_nums[i]-sorted_nums[i-1]
            if diff != 1:
                return sorted_nums[i-1] + 1
        # missing number start
        if sorted_nums[0] != 0:
            return 0
        else:
            return sorted_nums[-1] + 1 

        

        
