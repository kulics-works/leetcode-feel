threeSum : (nums []int->v [][]int) {
    nums.sort()
    arr : [][]int{}
    length : nums.len
    @ i : 0 .. length-1 {
        ? nums[i]>0 {
            ~@
        }
        ? i>0 & nums[i] == nums[i-1] {
            ->@
        }
        l, r : i+1, length-1
        @ l < r {
            sum : nums[l] + nums[r] + nums[i]
            ? sum == 0 {
                arr.add([]int{nums[l], nums[r], nums[i]})
                @ l < r & nums[l] == nums[l+1] {
                    l += 1
                }
                @ l < r & nums[r] == nums[r-1] {
                    r -= 1
                }
                l += 1
                r -= 1
            } sum < 0 {
                l += 1
            } sum > 0 {
                r -= 1
            }
        }
    }
    <- arr
}