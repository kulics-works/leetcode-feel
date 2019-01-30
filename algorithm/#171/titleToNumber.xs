Solution. -> {
    titleToNumber(s: str) -> (v: i32) {
        num := 0
        @ i <- s {
            num *= 26
            num += i - 'A' + 1
        }
        <- (num)
    }
}