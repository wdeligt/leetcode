class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        strs.sort()
        prefix = ""
        for i, j in zip(strs[0], strs[-1]):
            if (i == j):
                prefix += i
            else:
                break
        return prefix



        
