class Solution:
    def equalPairs(self, grid: List[List[int]]) -> int:

        cnt_row = Counter([tuple(row) for row in grid])
        cnt_col = Counter([tuple(col) for col in zip(*grid)])
        
        return sum([cnt_row[key] * cnt_col[key] for key in cnt_row])


