Solution -> {
    findLUSlength(a: str, b: str) -> (v: i32) {
        la := a.count
        lb := b.count

        ? a == b {
            <- (-1)
        } la > lb {
            <- (la)
        }
        <- (lb)
    }
}