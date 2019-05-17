Search BST(root: ^TreeNode, val: Int) -> (v: TreeNode)  {
    ? root == () {
        <- (())
    } root.val == val {
        <- (root)
    } root.val > val {
        <- (Search BST(root.left, val))
    } _ {
        <- (Search BST(root.right, val))
    }
}
