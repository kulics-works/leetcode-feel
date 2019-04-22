MaxDepth(root: TreeNode) -> (v: I32) {
    ? root == Nil { 
        <- (0) 
    }

    l := 1 + MaxDepth(root.Left)
    r := 1 + MaxDepth(root.Right)

    ? l > r { 
        <- (l)
    } _ { 
        <- (r) 
    }
}
