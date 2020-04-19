maxSubArray : (nums []int->v int) {
    currentSum! : nums[0]
    maxSum! : nums[0]
    @ i : 1~nums.len-1 {
        currentSum = max(nums[i], currentSum+nums[i])
        maxSum = max(maxSum, currentSum)
    }
    <- maxSum
}