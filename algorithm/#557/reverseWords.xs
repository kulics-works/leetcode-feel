ReverseWords(s: Str) -> (v: Str) {
    result := ""
    s.Split(' ') @ ea {
        result += ea.Reverse() + " "
    }
    <- (result)
}
