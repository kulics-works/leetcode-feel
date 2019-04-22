FindLUSlength(a: Str, b: Str) -> (v: I32) {
    la := a.Len
    lb := b.Len

    ? a == b {
        <- (-1)
    } la > lb {
        <- (la)
    }
    <- (lb)
}
