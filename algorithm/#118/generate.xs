Generate(numRows: I32) -> (v: [[I32]]) {
    arr := [[I32]]{}
    [0 < numRows] @ i {
        temp := {1}
        [1 <= i] @ j {
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
