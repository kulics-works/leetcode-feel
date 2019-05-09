ArrayPairSum(nums: []I32) -> (v: I32) {
    iNums = nums.OrderBy({it->it}).ToList()
    sum := 0
    length := iNums.Len
    [0 < length, 2] @ ea {
        sum += iNums[ea]
    }
    <- (sum)
}
