Solution -> {
    SortedArrayToBST(nums: [I32]) -> (v: TreeNode) {
        ? nums.Len == 0 {
            <- (nil)
        }
        middle := nums.Len/2

        <- (TreeNode{
            Val = nums[middle],
            Left = SortedArrayToBST(nums[<middle]),
            Right = SortedArrayToBST(nums[middle+1<=])
        })
    }
}