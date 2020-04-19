Transpose : (a [][]int -> v [][]int) {
    L1! : a.len
    L2! : a[0].len
    Result! : [][]int{}
    @ i : 0 ~ L2-1 {
        temp! : []int{}
        @ j : 0 ~ L1-1 {
            temp += a[j][i]
        }
        Result += temp 
    }
    <- Result
}
