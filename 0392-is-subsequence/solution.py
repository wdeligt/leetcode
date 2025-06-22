class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        if s == "":
            return True
        subsequence = False
        for l in s:
            if l in t:
                index = t.index(l)
                t = t[index+1:]
                subsequence = True
            else:
                subsequence = False
                break
        return subsequence
        
