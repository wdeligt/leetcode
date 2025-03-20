class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        skip = False
        for i, j in enumerate(reversed(digits)):
            if skip:
                continue
            if j != 9:
                digits[len(digits)-1-i] = j+1
                break
            else:
                digits[len(digits)-1-i] = 0
        if digits[0] == 0:
           digits = [1] + digits
        return digits
