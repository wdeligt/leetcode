class Solution:
    def findDifference(self, nums1: List[int], nums2: List[int]) -> List[List[int]]:
        s1, s2 = set(nums1), set(nums2)
        out1, out2 = set(), set()
        for num1 in nums1:
            if num1 not in s2: 
                out1.add(num1)
        for num2 in nums2:
            if num2 not in s1:
                out2.add(num2)
        
        return [list(out1), list(out2)]


        

        
