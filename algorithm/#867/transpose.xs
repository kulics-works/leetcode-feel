Transpose(a: [][]Int) -> (v: [][]Int) {
    L1 := a.len
    L2 := a[0].len
    Result := [][]Int{}
    [0 < L2] @ i {
        temp := []Int{}
        [0 < L1] @ j {
            temp += a[j][i]
        }
        Result += temp 
    }
    <- (Result)
}