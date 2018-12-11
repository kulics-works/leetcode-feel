Solution. -> {
    reverseWords(s: str) -> (v: str) {
        Result := ""
        @ s.split(' ') {
            Result += ea.reverse() + " "
        }
        <- (Result)
    }
}