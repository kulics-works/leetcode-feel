MaxDepth : (root ?TreeNode -> v int) {
    ? root == nil { 
        <- 0
    }

    L = 1 + MaxDepth(root.left)
    R = 1 + MaxDepth(root.right)

    ? L > R { 
        <- L
    } _ {
        <- R
    }
}
