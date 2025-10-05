class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        answer = ""
        n = len(word1)
        m = len(word2)
        if n == m:
            for i in range(n):
                answer += word1[i] + word2[i]
        elif n < m:
            for j in range(n):
                answer += word1[j] + word2[j]
            answer += word2[j+1:]
        elif m < n:
            for k in range(m):
                answer += word1[k] + word2[k]
            answer += word1[k+1:]      
        return answer

