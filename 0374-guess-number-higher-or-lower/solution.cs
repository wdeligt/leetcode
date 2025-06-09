/** 
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0
 * int guess(int num);
 */

public class Solution : GuessGame {
    public int GuessNumber(int n) {
        int left = 1;
        int right = n;
        while (left <= right)
        {
            int mid = left + (right - left) / 2;
            int myGuess = guess(mid);
            if (myGuess == -1)
            {
                right = mid - 1;
                continue;
            }
            else if (myGuess == 1)
            {
                left = mid + 1;
                continue;
            }
            else
            {
                return mid;
            }
        }
        return left;
    }
}
