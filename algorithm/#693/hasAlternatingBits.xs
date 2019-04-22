HasAlternatingBits(n: I32) -> (v: Bl) {
    <- ( (n + n.Rht(1) + 1).And(n + n.Rht(1)) == 0 )
}
