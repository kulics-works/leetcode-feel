lengthOfLIS : (nums []int->v int) {
    ? nums.len == 0 {
        <- 0
    }
    dp : []int(nums.len)
    maxLength! : 1
    dp[0] = 1
    @ i : 1 .. nums.len {
        maxValue! : 0
        @ j : 0 .. i-1 {
            ? nums[i] > nums[j] {
                maxValue = max(maxValue, dp[j])
            }
        }
        dp[i] = maxValue + 1
        maxLength = max(maxLength, dp[i])
    }
    <- maxLength
}