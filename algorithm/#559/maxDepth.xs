Solution -> {
    maxDepth(root: Node) -> (v: i32) {
        ? root == nil {
            <- (0)
        }

        Depth := 0
        @ ea <- root.children {
            temp := maxDepth(ea)
            ? temp > Depth {
                Depth = temp
            }
        }
        <- (Depth+1)
    }
}