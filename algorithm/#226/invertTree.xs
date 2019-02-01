Solution -> {
    invertTree(root: TreeNode) -> (v: TreeNode) {
        ? root == nil { 
            <- (nil) 
        }
        <- (TreeNode{ <-
            val = root.val,
            left = invertTree(root.right),
            right = invertTree(root.left)
        })
    }
}