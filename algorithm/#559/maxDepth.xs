MaxDepth(root: ^Node) -> (v: I32) {
    ? root == () {
        <- (0)
    }

    depth := 0
    root.Children @ ea {
        temp := MaxDepth(ea)
        ? temp > depth {
            depth = temp
        }
    }
    <- (depth+1)
}
