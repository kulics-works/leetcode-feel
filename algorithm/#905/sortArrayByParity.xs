Solution -> {
    SortArrayByParity(a: [I32]) -> (v: I32) {
        arr1 := [I32]()
        arr2 := [I32]()
        @ ea <- a {
            ? ea & 1 ~= 1 {
                arr1 += ea
            } _ {
                arr2 += ea
            }
        }
        <- (arr1 + arr2)
    }
}