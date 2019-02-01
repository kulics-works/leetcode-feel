Solution -> {
    peakIndexInMountainArray(A: [i32]) -> (v: i32) {
        Max := 0
        @ [i]v <- A {
            ? v >= Max {
                Max = v
            } _ {
                <- (i-1)
            }
        }
        <- (0)
    }
}