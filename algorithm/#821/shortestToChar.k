ShortestToChar : (s str, c Chr -> v []int) {
    Flag = -(s.len)
    Arr = []int(s.len)
    @ [i]v = s.. {
        ? v == c {
            Flag = i
        }
        Arr[i] = i - Flag
    }
    Flag = s.len * 2
    @ i = s.len-1 ~^ 0.. {
        ? s[i] == c {
            Flag = i
        }
        Arr[i] = Min(Flag-i, Arr[i])
    }
    <- Arr
}

Min : (a int, b int -> v int) {
    ? a < b {
        <- a
    }
    <- b
}
