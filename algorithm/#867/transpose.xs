Transpose(a: [][]I32) -> (v: [][]I32) {
    l1 := a.Len
    l2 := a[0].Len
    result := [][]I32{}
    [0 < l2] @ i {
        temp := []I32{}
        [0 < l1] @ j {
            temp += a[j][i]
        }
        result += temp 
    }
    <- (result)
}
