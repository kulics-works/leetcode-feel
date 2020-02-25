NumJewelsInStones : (j str, s str -> num int) {
    Count! : 0
    @ ea : s.. {
        ? j.has(ea) {
            Count += 1
        }
    }
    <- Count
}
