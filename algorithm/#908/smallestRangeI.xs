Solution. -> {
    smallestRangeI(A: [i32], K: i32) -> (v: i32) {
        ? A.count == 0 {
            <- (0)
        }
        Max := A[0]
        Min := A[0]
        @ ea <- A {
            ? ea > Max {
                Max = ea
            } ea < Min {
                Min = ea
            }
        }
        ? Max - Min >= K * 2 {
            <- (Max - Min - K * 2)
        }
        <- (0)
    }
}