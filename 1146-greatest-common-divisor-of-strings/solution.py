from math import gcd
class Solution:
    def gcdOfStrings(self, str1: str, str2: str) -> str:

        def isDivisor(l: int) -> bool:
            if len(str1) % l or len(str2) % l:
                return False
            f1, f2 = len(str1) // l, len(str2) // l
            print(f1 * str1[:l])
            print(f2 * str2[:l])
            if str1[:l] == str2[:l] and str1 == f1 * str1[:l] and str2 == f2 * str2[:l]:
                return True
            else:
                return False
            


        len1, len2 = len(str1), len(str2)
        for l in range(min(len1, len2), 0, -1):
            if isDivisor(l=l):
                return str1[:l]

        return ''
            



                        
                    



                
                




        
