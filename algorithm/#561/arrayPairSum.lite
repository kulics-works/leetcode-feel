Array Pair Sum(nums: []Int) -> (v: Int) {
    Nums := nums.order by({it->it}).to List()
    Sum := 0
    Length := Nums.len
    [0 < Length, 2] @ ea {
        Sum += Nums[ea]
    }
    <- (Sum)
}
