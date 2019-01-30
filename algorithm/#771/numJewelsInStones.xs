Solution. -> {
    numJewelsInStones(J: str, S: str) -> (num: i32) {
        Count := 0
        @ ea <- S {
            ? J.has(ea) {
                Count += 1
            }
        }
        <- (Count)
    }
}