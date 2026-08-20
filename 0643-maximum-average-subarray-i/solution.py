class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        window_sum = sum(nums[:k])
        max_average = window_sum / k
        for r in range(k, len(nums)):
            window_sum -= nums[r-k]
            window_sum += nums[r]
            new_average = window_sum / k
            if new_average > max_average:
                max_average = new_average
        
        return max_average


            


        
