class Solution:
    def isValid(self, s: str) -> bool:
        d = {'(':')', '{':'}', '[':']'}
        stack = []
        for i in s:
            if i in d.keys():
                stack.append(i)
            else:
                if len(stack) == 0:
                    return False
                if d.get(stack[-1]) != i:
                    return False
                else:
                    stack.pop()
        if len(stack) != 0:
            return False
        else:
            return True

            
                

