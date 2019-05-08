ShortestToChar(s: Str, c: Chr) -> (v: [I32]) {
    flag := -(s.Len)
    arr := New<[I32]>(s.Len)
    s @ [i]v {
        ? v == c {
            flag = i
        }
        arr[i] = i - flag
    }
    flag = s.Len * 2
    [s.Len-1 >= 0] @ i {
        ? s[i] == c {
            flag = i
        }
        arr[i] = Min(flag-i, arr[i])
    }
    <- (arr)
}

Min(a: I32, b: I32) -> (v: I32) {
    ? a < b {
        <- (a)
    }
    <- (b)
}
