from math import prod
class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        answer = [1] * len(nums)
        prefix = 1
        for i in range(len(nums)):
            answer[i] *= prefix
            prefix *= nums[i]

        postfix = 1
        for j in range(len(nums), 0, -1):
            answer[j-1] *= postfix
            postfix *= nums[j-1]
        return answer
            
       
            
