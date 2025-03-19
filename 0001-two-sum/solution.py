class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        seen = {}
        for i, j in enumerate(nums):
            x = target - j
            if x in seen:
                return [i, seen[x]]
            seen[j] = i
        return []


            
            


            

            

