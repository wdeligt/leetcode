class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        n = len(nums)
        left = [0] * n
        right = [0] * n
        l_m = 1
        r_m = 1
        for i in range(n):
            j = -1 -i 
            left[i] = l_m
            right[j] = r_m
            l_m *= nums[i]
            r_m *= nums[j]

        return [l*r for l, r in zip(left, right)]


