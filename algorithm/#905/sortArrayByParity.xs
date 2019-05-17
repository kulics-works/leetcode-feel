Sort Array By Parity(a: []Int) -> (v: Int) {
    Arr1 := []Int{}
    Arr2 := []Int{}
    a @ ea {
        ? ea & 1 >< 1 {
            Arr1 += ea
        } _ {
            Arr2 += ea
        }
    }
    <- (Arr1 + Arr2)
}
