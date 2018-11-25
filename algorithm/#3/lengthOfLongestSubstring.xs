Solution {
    Library
}

lengthOfLongestSubstring (s:str)->(length:i32) {
    top := 0
    temp := [i32]{}

    haveIt (input:[i32], it:i32)->(yes:bl, index:i32) {
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

        ? temp.count > top {
            top = temp.count
        }
    }
    <- (top)
}