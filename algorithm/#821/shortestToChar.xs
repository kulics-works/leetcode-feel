Shortest To Char(s: Str, c: Chr) -> (v: []Int) {
    Flag := -(s.Len)
    Arr := <[]Int>(s.len)
    s @ [i]v {
        ? v == c {
            Flag = i
        }
        Arr[i] = i - Flag
    }
    Flag = s.len * 2
    [s.len-1 >= 0] @ i {
        ? s[i] == c {
            Flag = i
        }
        Arr[i] = Min(Flag-i, Arr[i])
    }
    <- (Arr)
}

Min(a: Int, b: Int) -> (v: Int) {
    ? a < b {
        <- (a)
    }
    <- (b)
}