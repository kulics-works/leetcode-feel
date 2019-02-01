Solution -> {
    findComplement(num: i32) -> (v: i32) {
        I := 1
        Inum := num
        @ ? I <= Inum {
            Inum = Inum.xor(I)
            I = I.lft(1)
        }
        <- (Inum)
    }
}