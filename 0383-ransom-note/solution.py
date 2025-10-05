from collections import Counter

class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:        
        d = Counter(magazine)

        for char in ransomNote:
            if char not in d:
                return False
            else:
                d[char] = d.get(char) - 1
                if d[char] == 0:
                    d.pop(char)

        return True




            


