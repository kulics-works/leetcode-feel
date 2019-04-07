Solution -> {
    ArrayPairSum(nums: [I32]) -> (v: I32) {
        iNums = nums.OrderBy({it->it}).ToList()
        sum := 0
        length := iNums.Len
        @ ea <- [0<length, 2] {
            sum += iNums[ea]
        }
        <- (sum)
    }
}