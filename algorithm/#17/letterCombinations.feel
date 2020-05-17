letterCombinations : (digits str->v []str) {
    ? digits.len >< 0 {
        backtrack("", digits)
    }
    <- output
}

backtrack : (combination str, next str->) {
    ? next.len == 0 {
        output += combination
    } _ {
        @ v : phone[next[0]] {
            backtrack(combination + v, next[1..])
        }
    }
}

output! : []str{}
dict! : {
    ["2"] = "abc"
    ["3"] = "def"
    ["4"] = "ghi"
    ["5"] = "jkl"
    ["6"] = "mno"
    ["7"] = "pqrs"
    ["8"] = "tuv"
    ["9"] = "wxyz"
}