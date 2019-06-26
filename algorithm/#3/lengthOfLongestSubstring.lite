Length Of Longest Substring(s: Str) -> (length: Int) {
    Top := 0
    Temp := []Int{}

    Have it(input: []Int, it: Int) -> (yes: Bool, index: Int) {
        input @ [i]v {
            ? v == it  {
                <- (True, i)
            }
        }
        <- (False, 0)
    }

    s @ v {
        (Yes, Index) := Have it(Temp, v)
        ? Yes {
            Temp = Temp.sub Str(Index + 1)
        }
        Temp += v

        ? Temp.len > Top {
            Top = Temp.len
        }
    }
    <- (Top)
}
