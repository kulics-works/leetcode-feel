Solution {
    Library
}

generate (numRows:i32)->(v:[[i32]]) {
    arr := [[i32]]{}
    @ i <- [0<numRows] {
        temp := _{1}
        @ j <- [1<=i] {
            right := 0
            ? j < i {
                right = arr[i-1][j]
            }
            temp += arr[i-1][j-1] + right
        }
        arr += temp
    }
    <- (arr)
}