class Solution:
    def closeStrings(self, word1: str, word2: str) -> bool:
        if len(word1) != len(word2):
            return False
        
        cnt1, cnt2 = Counter(word1), Counter(word2)

        if cnt1 == cnt2:
            return True

        if sum(cnt1.values()) == sum(cnt2.values()) and cnt1.keys() == cnt2.keys() and Counter(cnt1.values()) == Counter(cnt2.values()):
            return True
        return False

        
        
