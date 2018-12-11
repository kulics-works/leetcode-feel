Solution. -> {
    arrayPairSum(nums: [i32]) -> (v: i32) {
        inums = nums.OrderBy($it).ToList()
        Sum := 0
        length := inums.count
        @ [0<length; 2] {
            Sum += inums[ea]
        }
        <- (Sum)
    }
}