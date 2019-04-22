Generate(numRows: I32) -> (v: [[I32]]) {
    arr := [[I32]]{}
    @ i <- [0<numRows] {
        temp := {1}
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
