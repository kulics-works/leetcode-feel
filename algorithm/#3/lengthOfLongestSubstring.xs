Solution. -> {
    lengthOfLongestSubstring(s: str) -> (length: i32) {
        Top := 0
        temp := [i32]{}

        haveIt(input: [i32], it: i32) -> (yes: bl, index: i32) {
            @ i -> v <- input {
                ? v == it  {
                    <- (true, i)
                }
            }
            <- (false, 0)
        }

        @ v <- s {
            _(yes, index) := haveIt(temp, v)
            ? yes {
                temp = temp.subStr(index+1)
            }
            temp += v

            ? temp.count > Top {
                Top = temp.count
            }
        }
        <- (Top)
    }
}