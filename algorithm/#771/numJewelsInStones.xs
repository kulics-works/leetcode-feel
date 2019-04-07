Solution -> {
    NumJewelsInStones(j: Str, s: Str) -> (num: I32) {
        count := 0
        @ ea <- s {
            ? j.Has(ea) {
                count += 1
            }
        }
        <- (count)
    }
}