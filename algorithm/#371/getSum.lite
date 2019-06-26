Get Sum(a: Int, b: Int) -> (v: Int) {
    IA := a
    IB := b
    @ IB >< 0 {
        Carry := IA.and(IB)
        IA = IA.xor(IB)
        IB = Carry.lft(1)
    }
    <- (IA)
}
