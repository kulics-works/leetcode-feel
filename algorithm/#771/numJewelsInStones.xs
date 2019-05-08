NumJewelsInStones(j: Str, s: Str) -> (num: I32) {
    count := 0
    s @ ea {
        ? j.Has(ea) {
            count += 1
        }
    }
    <- (count)
}
