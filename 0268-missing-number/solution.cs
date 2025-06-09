
public class Solution {
    public int MissingNumber(int[] nums) {
        int actualSum=0;
        int expectedSum=0;
        for (int i=0;i<nums.Length+1;i++)
        {
            if(i<nums.Length){
               actualSum+=nums[i];
            }
            expectedSum += i;
        }
        return expectedSum - actualSum;
    }
}
