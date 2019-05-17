Find Complement(num: Int) -> (v: Int) {
    I := 1
    Num := num
    @ I <= Num {
        Num = Num.xor(I)
        I = I.lft(1)
    }
    <- (Num)
}
