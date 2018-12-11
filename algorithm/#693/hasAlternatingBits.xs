Solution. -> {
    hasAlternatingBits(n: i32) -> (v: bl) {
        <- ( _(n + n.rht(1) + 1).and(n + n.rht(1)) == 0 )
    }
}