TitleToNumber(s: Str) -> (v: I32) {
    num := 0
    s @ i {
        num *= 26
        num += i - 'A' + 1
    }
    <- (num)
}
