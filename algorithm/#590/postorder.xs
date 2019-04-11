Solution -> {
    Postorder(root: Node) -> (v: [I32]) {
        ? root == Nil {
            <- ([I32]())
        }
        list := [I32]()
        @ ea <- root.Children {
            list += Postorder(ea)
        }
        list += root.Val
        <- (list)
    }
}