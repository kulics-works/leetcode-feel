SelfDividingNumbers(left: I32, right: I32) -> (v: [I32]) {
    arr := [I32]{}
    [left <= right] @ i {
        str := i.ToStr()
        str @ v {
            temp := 0
            v ? '0' { 
                <- @ 
            } _ { 
                temp = i % v.ToI32() 
            }

            ? temp >< 0 {
                <- @
            }
        }
        arr += i
    }
    <- (arr)
}
