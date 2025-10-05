from collections import Counter
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        d = Counter(s)
        f = Counter(t)

        if d == f:
            return True
        return False
