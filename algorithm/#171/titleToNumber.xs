Solution {
    Library
}

titleToNumber (s:str)->(v:i32) {
    num := 0
    @ s {
        num *= 26
        num += ea - 'A' + 1
    }
    <- (num)
}