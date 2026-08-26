class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        hm = {}
        s = set()
        for num in arr:
            if num in hm:
                hm[num] += 1
            else:
                hm[num] = 1 
        for key, values in hm.items():
            s.add(values)

        return True if len(s) == len(set(arr)) else False

