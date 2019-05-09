InvertTree(root: ^TreeNode) -> (v: ^TreeNode) {
    ? root == () { 
        <- (()) 
    }
    <- (TreeNode{
        Val = root.Val,
        Left = InvertTree(root.Right),
        Right = InvertTree(root.Left)
    })
}
