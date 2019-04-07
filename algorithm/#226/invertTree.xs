Solution -> {
    InvertTree(root: TreeNode) -> (v: TreeNode) {
        ? root == nil { 
            <- (nil) 
        }
        <- (TreeNode{ <-
            Val = root.Val,
            Left = InvertTree(root.Right),
            Right = InvertTree(root.Left)
        })
    }
}