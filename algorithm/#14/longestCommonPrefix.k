longestCommonPrefix : (strs []str->v str) {
    longest! : ""
    length : strs.len
    ? length == 0 {
        <- longest
    }
    ? length == 1 {
        <- strs[0]
    }
    longest = strs[0]
    @ i : 0 ..< strs.len-1 {
        head! : 0
        strlen : min(strs[i].len, strs[i+1].len)
        ? strlen == 0 {
            <- ""
        }
        @ head < strlen & strs[i][head] == strs[i+1][head] {
            head += 1
        }
        ? head > 0 {
            temp : strs[i][..head]
            ? temp.len < longest.len {
                longest = temp
            }
        } _ {
            longest = ""
            break
        }
    }
    <- longest
}