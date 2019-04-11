Solution -> {
    LengthOfLongestSubstring(s: Str) -> (length: I32) {
        top := 0
        temp := [I32]()

        haveIt(input: [I32], it: I32) -> (yes: Bl, index: I32) {
            @ [i]v <- input {
                ? v == it  {
                    <- (True, i)
                }
            }
            <- (False, 0)
        }

        @ v <- s {
            (yes, index) := haveIt(temp, v)
            ? yes {
                temp = temp.SubStr(index+1)
            }
            temp += v

            ? temp.Len > top {
                top = temp.Len
            }
        }
        <- (top)
    }
}