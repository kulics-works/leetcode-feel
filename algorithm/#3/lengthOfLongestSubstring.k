LengthOfLongestSubstring : (s str -> length int) {
    Top! : 0
    Temp! : []int{}

    HaveIt : (input []int, it int -> yes bool, index int) {
        @ [i]v : input {
            ? v == it  {
                <- true, i
            }
        }
        <- false, 0
    }

    @ v : s {
        Yes, Index : HaveIt(Temp, v)
        ? Yes {
            Temp = Temp.sub_str(Index + 1)
        }
        Temp += v

        ? Temp.len > Top {
            Top = Temp.len
        }
    }
    <- Top
}
