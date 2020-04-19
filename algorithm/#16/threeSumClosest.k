threeSumClosest : (nums []int, target int->v int) {
    length : nums.len
    nums.sort()
    closs! : nums[0]+nums[1]+nums[2]
    @ i : 0~length - 1 {
        l, r : i+1, length-1
        @ l < r {
            sum : nums[i]+nums[l]+nums[r]
            ? abs(sum-target) < abs(closs-target) {
                closs = sum
            } sum > target {
                r -= 1
            } _ {
                l += 1
            }
        }
    }
    <- closs
}