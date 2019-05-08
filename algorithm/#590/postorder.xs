Postorder(root: Node) -> (v: [I32]) {
    ? root == () {
        <- ([I32]{})
    }
    list := [I32]{}
    root.Children @ ea {
        list += Postorder(ea)
    }
    list += root.Val
    <- (list)
}
