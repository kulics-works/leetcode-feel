SortArrayByParityII(a: [I32]) -> (v: [I32]) {
    arr := [I32](a.Len)
    iA := 0
    iB := 1
    @ ea <- iA {
        ? ea & 1 >< 1 {
            arr[iA] = ea
            iA += 2
        } _ {
            arr[iB] = ea
            iB += 2
        }
    }
    <- (arr)
}
