Solution {
    Library
}

transpose (A:[[i32]])->(v:[[i32]]) {
    l1 := A.count
    l2 := A[0].count
    result := [[i32]]{}
    @ i <- [0<l2] {
        temp := [i32]{}
        @ j <- [0<l1] {
            temp += A[j][i]
        }
        result += temp 
    }
    <- (result)
}