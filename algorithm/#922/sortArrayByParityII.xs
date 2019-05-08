SortArrayByParityII(a: [I32]) -> (v: [I32]) {
    arr := New<[I32]>(a.Len)
    iA := 0
    iB := 1
    iA @ ea {
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
