class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        l = 0 
        m = len(matrix)
        n = len(matrix[0])
        r = m * n - 1
        while l <= r:
            mid = int((l+r) // 2)
            i = int(mid // n)
            j = int(mid % n)
            if target == matrix[i][j]:
                return True
            elif target > matrix[i][j]:
                l = mid + 1
            else:
                r = mid -1 

        return False

