public class Solution {
    public int[] TwoSum(int[] nums, int target) {
        var map = new Dictionary<int, int>();
        for (var i = 0; i <= nums.Length; i++)
        {
            var v = nums[i];
            if (map.TryGetValue(target - v, out int num))
            {
                return new int[] { i, num };
            }
            else
            {
                map[v] = i;
            }
        }
        return Array.Empty<int>();
    }
}