Solution {
    Library
}

peakIndexInMountainArray (A:[i32])->(v:i32) {
    max := 0
    @ i -> v <- A {
        ? v >= max {
            max = v
        } _ {
            <- (i-1)
        }
    }
    <- (0)
}