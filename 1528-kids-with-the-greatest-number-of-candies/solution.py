class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        max_candies = max(candies)
        min_candies_needed_for_new_max = max_candies - extraCandies
        result = []
        for i in range(len(candies)):
            if candies[i] >= min_candies_needed_for_new_max:
                result.append(True)
            else:
                result.append(False)
        return result

