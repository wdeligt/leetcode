class Solution:
    def findDegrees(self, matrix: list[list[int]]) -> list[int]:
        ans = []
        for vertex in matrix:
            ans.append(sum(vertex))
        return ans



