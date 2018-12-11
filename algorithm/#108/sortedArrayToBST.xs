Solution. -> {
    sortedArrayToBST(nums: [i32]) -> (v: TreeNode) {
        ? nums.count == 0 {
            <- (nil)
        }
        middle := nums.count/2

        <- (TreeNode{ <-
            val = nums[middle],
            left = sortedArrayToBST(nums[<middle]),
            right = sortedArrayToBST(nums[middle+1<=])
        })
    }
}