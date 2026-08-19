class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        left = n
        for i in range(len(flowerbed)):
            if flowerbed[i] == 1:
                continue
            else:
                if len(flowerbed) == 1:
                    flowerbed[i] = 1
                    n-=1
                elif i == 0 and flowerbed[i+1] == 0:
                    flowerbed[i] = 1
                    n -= 1
                elif i == 0 and flowerbed[i+1] == 1:
                    continue
                elif i == len(flowerbed) - 1 and flowerbed[i - 1] == 0:
                    flowerbed[i] = 1
                    n -= 1
                elif i == len(flowerbed) - 1 and flowerbed[i-1] == 1:
                    continue
                elif flowerbed[i-1] == 0 and flowerbed[i+1] == 0:
                    flowerbed[i] = 1
                    n -= 1
                else:
                    continue
        return True if n <= 0 else False
 


