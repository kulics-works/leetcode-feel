Solution {
    Library
}

reverseWords (s:str)->(v:str) {
    result := ""
    @ [s.split(' ')] {
        result += ea.reverse() + " "
    }
    <- (result)
}