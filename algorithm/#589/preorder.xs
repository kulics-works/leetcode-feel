Preorder(root: Node) -> (v: [I32]) {
    ? root == () {
        <- ([I32]{})
    }
    list := [I32]{}
    list += root.Val
    root.Children @ ea {
        list += Preorder(ea)
    }
    <- (list)
}
