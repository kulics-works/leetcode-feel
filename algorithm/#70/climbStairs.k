climbStairs : (n int->v int) {
    dp : []int(n)
    @ i : 0 ~ n-1 {
        ? i == 0 {
            dp[i] = 1
        } i == 1 {
            dp[i] = dp[i-1] + 1
        } _ {
            dp[i] = dp[i-1] + dp[i-2]
        }
    }
    <- dp[n-1]
}