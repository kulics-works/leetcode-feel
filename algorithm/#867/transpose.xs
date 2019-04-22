Transpose(a: [[I32]]) -> (v: [[I32]]) {
    l1 := a.Len
    l2 := a[0].Len
    result := [[I32]]()
    @ i <- [0<l2] {
        temp := [I32]()
        @ j <- [0<l1] {
            temp += a[j][i]
        }
        result += temp 
    }
    <- (result)
}
