class Solution:
    def removeStars(self, s: str) -> str:
        ls = []
        for char in list(s):
            if char == "*":
                ls.pop()
            else:
                ls.append(char)
        return ''.join(ls)

        
