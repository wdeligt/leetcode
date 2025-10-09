class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        n = len(nums)
        l = 0 
        r = k - 1
        summ = sum(nums[l:r+1])
        max_average = summ / k
        for i in range(1, n - k + 1):
            summ = summ - nums[i-1] + nums[i+k-1]
            new_average = summ / k
            if new_average > max_average:
                max_average = new_average

        return max_average


        
