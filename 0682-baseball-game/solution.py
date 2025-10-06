class Solution:
    def calPoints(self, operations: List[str]) -> int:
        rules = set(['+', 'D', 'C'])
        stack = []
        for oper in operations:
            if oper not in rules:
                stack.append(int(oper))
            elif oper == '+':
                stack.append(stack[-1]+stack[-2])
            elif oper == 'D':
                stack.append(2*int(stack[-1]))
            else:
                stack.pop()
        
        return sum(stack)

        
