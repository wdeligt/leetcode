class Solution:
    def reverseWords(self, s: str) -> str:
        words = []
        word = []
        for char in s:
            if char != ' ':
                word.append(char)
            elif word:
                words.append(''.join(word))
                word = []
        if word:
            words.append(''.join(word))
        return ' '.join(words[::-1])

        
