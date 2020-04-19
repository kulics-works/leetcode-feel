uniquePaths : (m int, n int->v int) {
    # 动态创建一个二维路径答案表
    dp : [][]int(n)
    @ i : 0~n-1 {
        dp[i] = []int(m)
    }
    
    @ i : 0 ~ n-1 {
        @ j : 0 ~ m-1 {
            # 最上一行或者最左一列
            ? i == 0 | j == 0 {
                dp[i][j] = 1
            } _ {
                dp[i][j] = dp[i-1][j] + dp[i][j-1]
            }
        }
    }
    
    <- dp[n-1][m-1]
}