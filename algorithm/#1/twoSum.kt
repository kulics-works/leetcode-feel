class Solution {
    fun twoSum(nums: IntArray, target: Int): IntArray {
        val map = mutableMapOf<Int, Int>()
        for ((i, v) in nums.withIndex()) {
            val num = map[target - v]
            if (num != null){
                return intArrayOf(i, num)
            } else {
                map[v] = i
            }
        }
        return intArrayOf()
    }
}