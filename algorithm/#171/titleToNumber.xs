Solution -> {
    TitleToNumber(s: Str) -> (v: I32) {
        num := 0
        @ i <- s {
            num *= 26
            num += i - 'A' + 1
        }
        <- (num)
    }
}