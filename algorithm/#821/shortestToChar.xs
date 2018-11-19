Solution {
    Library
}

shortestToChar (S:str, C:chr)->(v:[]i32) {
    flag := -S.count
    arr := []i32{S.count}
    @ [S] i -> v {
        ? v == C {
            flag = i
        }
        arr[i] = i - flag
    }
    flag = S.count * 2
    @ [S.count-1 >= 0] i {
        ? S[i] == C {
            flag = i
        }
        arr[i] = min(flag-i, arr[i])
    }
    <- (arr)
}

min (a,b:i32)->(v:i32) {
    ? a < b {
        <- (a)
    }
    <- (b)
}