Solution -> {
    Preorder(root: Node) -> (v: [I32]) {
        ? root == nil {
            <- ([I32]())
        }
        list := [I32]()
        list += root.Val
        @ ea <- root.Children {
            list += Preorder(ea)
        }
        <- (list)
    }
}