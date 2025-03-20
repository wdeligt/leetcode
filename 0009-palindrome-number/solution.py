class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False
        else:
            string = str(x)
            reversed_str = string[::-1]
            if string == reversed_str:
                return True
            else:
                return False

        
        
