class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        merged_string: str = ""
        if len(word1) == len(word2):
            for char1, char2 in zip(word1, word2):
                merged_string += char1 + char2
            return merged_string
        elif len(word1) > len(word2):
            for i in range(len(word2)):
                merged_string += word1[i] + word2[i]
            merged_string += word1[-(len(word1)-len(word2)):]
            return merged_string
        else:
            for i in range(len(word1)):
                merged_string += word1[i] + word2[i]
            merged_string += word2[-(len(word2)-len(word1)):]
            return merged_string

        

