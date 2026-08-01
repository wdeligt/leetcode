
class Solution:
    def digitFrequencyScore(self, n: int) -> int:
        d = {}
        for i in str(n):
            if i not in d:
                d[i] = 1
            else:
                d[i] += 1
        return sum([int(i)*d[i] for i in d])





       


