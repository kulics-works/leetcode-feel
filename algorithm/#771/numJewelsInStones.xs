Solution {
    Library
}

numJewelsInStones (J, S:str)->(num:i32) {
    count := 0
    @ [S] {
        ? J.has(ea) {
            count += 1
        }
    }
    <- (count)
}