Generate(numRows: Int) -> (v: [][]Int) {
    Arr := [][]Int{}
    [0 < numRows] @ i {
        Temp := {1}
        [1 <= i] @ j {
            Right := 0
            ? j < i {
                Right = Arr[i-1][j]
            }
            Temp += Arr[i-1][j-1] + Right
        }
        Arr += Temp
    }
    <- (Arr)
}