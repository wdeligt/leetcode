class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        if len(nums) == 0:
            return []
        answer = []
        string = ""
        start = 0
        end = 0
        for i in range(0, len(nums) - 1):
            a = nums[start]
            b = nums[i + 1]
            if nums[i + 1] - nums[i] != 1:
                if a == nums[i]:
                    string = str(a)
                    answer.append(string)
                    start = i + 1
                else:
                    string = str(a) + "->" + str(nums[i])
                    answer.append(string)
                    start = i + 1
        n = len(nums)
        if nums[n-1] - nums[n-2] != 1:
            answer.append(str(nums[n-1]))
        else:
            answer.append(str(a) + "->" + str(nums[n-1]))

        return answer
                

            

            



            
