FindComplement(num: I32) -> (v: I32) {
    i := 1
    iNum := num
    @ ? i <= iNum {
        iNum = iNum.Xor(i)
        i = i.Lft(1)
    }
    <- (iNum)
}
