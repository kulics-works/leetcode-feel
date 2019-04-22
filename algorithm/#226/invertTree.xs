InvertTree(root: TreeNode) -> (v: TreeNode) {
    ? root == Nil { 
        <- (Nil) 
    }
    <- (TreeNode{ <-
        Val = root.Val,
        Left = InvertTree(root.Right),
        Right = InvertTree(root.Left)
    })
}
