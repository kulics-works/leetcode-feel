Solution -> {
    SelfDividingNumbers(left: I32, right: I32) -> (v: [I32]) {
        arr := [I32]()
        @ i <- [left<=right] {
            str := i.ToStr()
            @ v <- str {
                temp := 0
                ? v -> '0' { 
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
}