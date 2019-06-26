Preorder(root: ?Node) -> (v: []Int) {
    ? root == Nil {
        <- ([]Int{})
    }
    List := []Int{}
    List += root.val
    root.children @ ea {
        List += Preorder(ea)
    }
    <- (List)
}
