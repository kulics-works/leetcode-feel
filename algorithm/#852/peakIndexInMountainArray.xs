Peak Index In Mountain Array(a: []Int) -> (v: Int) {
    Max := 0
    a @ [i]v {
        ? v >= Max {
            Max = v
        } _ {
            <- (i-1)
        }
    }
    <- (0)
}
