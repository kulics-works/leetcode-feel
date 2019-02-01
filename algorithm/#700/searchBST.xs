Solution -> {
    searchBST(root: TreeNode, val: i32) -> (v: TreeNode)  {
        ? root == nil {
            <- (nil)
        } root.val == val {
            <- (root)
        } root.val > val {
            <- (searchBST(root.left, val))
        } _ {
            <- (searchBST(root.right, val))
        }
    }
}