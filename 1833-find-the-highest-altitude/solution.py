class Solution:
    def largestAltitude(self, gain: List[int]) -> int:
        m = 0
        prefix = 0 
        for num in gain:
            prefix += num
            m = max(prefix, m)
        return m
        
