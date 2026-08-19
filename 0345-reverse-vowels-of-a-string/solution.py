class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = set(["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"])
        ls = list(s)
        l = 0
        r = len(ls) - 1
        if len(s) == 0 or len(s) == 1:
            return s
        while l <= r:
            if ls[l] in vowels and ls[r] in vowels:
                temp = ls[l]
                ls[l] = ls[r]
                ls[r] = temp
                l += 1
                r -= 1
            elif ls[l] in vowels and ls[r] not in vowels:
                r -= 1
            elif ls[l] not in vowels and ls[r] in vowels:
                l += 1
            else:
                l += 1
                r -= 1
        return "".join(ls)

