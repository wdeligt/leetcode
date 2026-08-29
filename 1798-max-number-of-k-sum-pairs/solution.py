class Solution:
    def maxOperations(self, nums: List[int], k: int) -> int:
        cnt = Counter(nums)
        count = 0
        for key in cnt.keys():
            num_needed = k - key
            if key == num_needed:
                count += cnt[key] // 2
            elif num_needed in cnt and key < num_needed:
                count += min(cnt[key], cnt[num_needed])
        return count

