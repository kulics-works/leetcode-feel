Sorted Array To BST(nums: []Int) -> (v: ^TreeNode) {
    ? nums.len == 0 {
        <- (())
    }
    Middle := nums.len / 2

    <- (TreeNode{
        val = nums[Middle],
        left = Sorted Array To BST(nums[<Middle]),
        right = Sorted Array To BST(nums[Middle+1<=])
    })
}
