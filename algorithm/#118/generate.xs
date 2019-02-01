Solution -> {
    generate(numRows: i32) -> (v: [[i32]]) {
        arr := [[i32]]{}
        @ i <- [0<numRows] {
            temp := {1}
            @ j <- [1<=i] {
                Right := 0
                ? j < i {
                    Right = arr[i-1][j]
                }
                temp += arr[i-1][j-1] + Right
            }
            arr += temp
        }
        <- (arr)
    }
}