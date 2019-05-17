Max Depth(root: ^TreeNode) -> (v: Int) {
    ? root == () { 
        <- (0) 
    }

    L := 1 + Max Depth(root.left)
    R := 1 + Max Depth(root.right)

    ? L > R { 
        <- (L)
    } _ { 
        <- (R) 
    }
}