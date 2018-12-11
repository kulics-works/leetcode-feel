Solution. -> {
    getSum(a: i32, b: i32) -> (v: i32) {
        Ia := a
        Ib := b
        @ ? Ib ~= 0 {
            carry := Ia.and(Ib)
            Ia = Ia.xor(Ib)
            Ib = carry.lft(1)
        }
        <- (Ia)
    }
}