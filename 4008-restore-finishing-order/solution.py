class Solution:
    def recoverOrder(self, order: List[int], friends: List[int]) -> List[int]:
        friends_order = []
        for i in order:
            if i in set(friends):
                friends_order.append(i)
        return friends_order 

        
