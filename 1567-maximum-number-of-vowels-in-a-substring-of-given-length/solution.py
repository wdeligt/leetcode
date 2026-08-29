class Solution:
    def maxVowels(self, s: str, k: int) -> int:
        vowels = set(['a', 'e', 'i', 'o', 'u'])
        n_vowels = sum(char in vowels for char in s[:k])
        m = n_vowels
        for i in range(k, len(s)):
            if s[i-k] not in vowels and s[i] in vowels:
                n_vowels += 1
            elif s[i-k] in vowels and s[i] not in vowels:
                n_vowels -= 1
            m = max(m, n_vowels)
        return m

            
        
            



        
