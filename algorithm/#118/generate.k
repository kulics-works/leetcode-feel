Generate : (numRows int -> v [][]int) {
    Arr! : [][]int{}
    @ i : 0 ~ numRows.. {
        Temp! : {1}
        @ j : 1 ~ i.. {
            Right! : 0
            ? j < i {
                Right = Arr[i-1][j]
            }
            Temp += Arr[i-1][j-1] + Right
        }
        Arr += Temp
    }
    <- Arr
}
