/* The isBadVersion API is defined in the parent class VersionControl.
      bool IsBadVersion(int version); */

public class Solution : VersionControl {
    public int FirstBadVersion(int n) {
        int left = 1;
        int right = n;
        
        while (left < right)
        {
            int mid = left + (right - left) / 2;
            
            if (IsBadVersion(mid))
            {
                right = mid;  // first bad version is at mid or before
            }
            else
            {
                left = mid + 1;  // first bad version is after mid
            }
        }
        
        return left;  // or return right; they are equal here
    }
}
