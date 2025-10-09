class Solution:
    def longestOnes(self, nums: List[int], k: int) -> int:
        n = len(nums)
        max_length = 0
        curr_length = 0
        zeros = 0
        l = 0
        r = 0
        for i in range(n):
            if nums[i] == 1:
                curr_length += 1
                r += 1
                max_length = max(max_length, curr_length)
            else:
                if zeros < k:
                    curr_length += 1
                    zeros += 1
                    r += 1
                    max_length = max(max_length, curr_length)
                else:
                    while zeros >= k:
                        if nums[l] == 1:
                            curr_length -= 1
                            l += 1
                        else:
                            curr_length -= 1
                            l += 1
                            zeros -= 1
                    curr_length += 1
                    zeros += 1
                    r += 1
                    max_length = max(max_length, curr_length)


        return max(max_length, curr_length)




        
