Solution {
    Library
}

arrayPairSum (nums:[]i32)->(v:i32) {
    nums = nums.OrderBy($it).ToList()
    sum := 0
    length := nums.count
    @ [0<length; 2] {
        sum += nums[ea]
    }
    <- (sum)
}