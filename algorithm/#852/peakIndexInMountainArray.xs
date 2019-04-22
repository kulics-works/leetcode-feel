PeakIndexInMountainArray(a: [I32]) -> (v: I32) {
    max := 0
    @ [i]v <- a {
        ? v >= max {
            max = v
        } _ {
            <- (i-1)
        }
    }
    <- (0)
}
