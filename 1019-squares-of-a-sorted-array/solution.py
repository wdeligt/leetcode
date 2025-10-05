class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        left = 0 
        right = len(nums) - 1
        answer = []
        while left <= right:
            if abs(nums[left]) < abs(nums[right]):
                answer.append(nums[right]**2)
                right -= 1 
            elif abs(nums[right]) <= abs(nums[left]):
                answer.append(nums[left]**2)
                left += 1

        return list(reversed(answer))
                


            

