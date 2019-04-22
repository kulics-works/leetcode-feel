MaxDepth(root: Node) -> (v: I32) {
    ? root == nil {
        <- (0)
    }

    depth := 0
    @ ea <- root.Children {
        temp := MaxDepth(ea)
        ? temp > depth {
            depth = temp
        }
    }
    <- (depth+1)
}
