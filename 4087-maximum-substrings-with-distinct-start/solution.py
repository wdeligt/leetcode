class Solution:
    def maxDistinct(self, s: str) -> int:
        d = set()
        out = 0
        for i in s:
            if i not in d:
                d.add(i)
                out += 1
            else:
                continue
        return out
