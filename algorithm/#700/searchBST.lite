Search BST(root: ?TreeNode, val: Int) -> (v: TreeNode)  {
    ? root == Nil {
        <- (Nil)
    } root.val == val {
        <- (root)
    } root.val > val {
        <- (Search BST(root.left, val))
    } _ {
        <- (Search BST(root.right, val))
    }
}
