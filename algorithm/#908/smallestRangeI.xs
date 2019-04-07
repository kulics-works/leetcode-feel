Solution -> {
    SmallestRangeI(a: [I32], k: I32) -> (v: I32) {
        ? a.Len == 0 {
            <- (0)
        }
        max := a[0]
        min := a[0]
        @ ea <- a {
            ? ea > max {
                max = ea
            } ea < min {
                min = ea
            }
        }
        ? max - min >= k * 2 {
            <- (max - min - k * 2)
        }
        <- (0)
    }
}