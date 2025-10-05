from collections import Counter
class Solution:
    def maxNumberOfBalloons(self, text: str) -> int:
        balloon =  Counter("balloon")
        counter = Counter(text)
        numbers = Counter()
        for char in balloon:
            number_in_text = counter.get(char, 0)
            needed_for_one_balloon = balloon.get(char)
            numbers[char] = number_in_text / needed_for_one_balloon

        return int(min(numbers.values()))



            


