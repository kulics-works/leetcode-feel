Solution -> {
    GetSum(a: I32, b: I32) -> (v: I32) {
        ia := a
        ib := b
        @ ? ib >< 0 {
            carry := ia.And(ib)
            ia = ia.Xor(ib)
            ib = carry.Lft(1)
        }
        <- (ia)
    }
}