Solution -> {
    selfDividingNumbers(left: i32, right: i32) -> (v: [i32]) {
        arr := [i32]{}
        @ i <- [left<=right] {
            str := i.toStr()
            @ v <- str {
                Temp := 0
                ? v -> '0' { 
                    <- @ 
                } _ { 
                    Temp = i % v.toI32() 
                }

                ? Temp ~= 0 {
                    <- @
                }
            }
            arr += i
        }
        <- (arr)
    }
}