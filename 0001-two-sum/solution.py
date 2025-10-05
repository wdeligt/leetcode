class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:

        seen = {}
        for i in range(len(nums)):
            num_needed = target - nums[i]
            if seen.get(num_needed, None) is not None and seen.get(num_needed) != i:
                return [i, seen[num_needed]]
            seen[nums[i]] = i






            

            

