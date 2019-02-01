Solution -> {
    reverseWords(s: str) -> (v: str) {
        Result := ""
        @ ea <- s.split(' ') {
            Result += ea.reverse() + " "
        }
        <- (Result)
    }
}