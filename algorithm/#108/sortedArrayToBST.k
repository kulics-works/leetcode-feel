SortedArrayToBST : (nums []int -> v ?TreeNode) {
    ? nums.len == 0 {
        <- nil
    }
    Middle : nums.len / 2

    <- TreeNode{
        val = nums[Middle]
        left = SortedArrayToBST(nums[_~Middle])
        right = SortedArrayToBST(nums[Middle+1~_])
    }
}
