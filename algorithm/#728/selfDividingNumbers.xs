Solution {
    Library
}

selfDividingNumbers (left,right:i32)->(v:[i32]) {
    arr := [i32]{}
    @ i <- [left<=right] {
        str := i.toStr()
        @ v <- str {
            temp := 0
            ? v -> '0' { 
                <- @ 
            } _ { 
                temp = i % v.toI32() 
            }

            ? temp ~= 0 {
                <- @
            }
        }
        arr += i
    }
    <- (arr)
}