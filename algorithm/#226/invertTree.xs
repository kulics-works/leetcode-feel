Invert Tree(root: ^TreeNode) -> (v: ^TreeNode) {
    ? root == () { 
        <- (()) 
    }
    <- (TreeNode{
        val = root.val,
        left = Invert Tree(root.right),
        right = Invert Tree(root.left)
    })
}
