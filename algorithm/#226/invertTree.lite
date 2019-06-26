Invert Tree(root: ?TreeNode) -> (v: ?TreeNode) {
    ? root == Nil { 
        <- (Nil) 
    }
    <- (TreeNode{
        val = root.val,
        left = Invert Tree(root.right),
        right = Invert Tree(root.left)
    })
}
