Solution -> {
    ReverseWords(s: Str) -> (v: Str) {
        result := ""
        @ ea <- s.Split(' ') {
            result += ea.Reverse() + " "
        }
        <- (result)
    }
}