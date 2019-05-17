Postorder(root: ^Node) -> (v: []Int) {
    ? root == () {
        <- ([]Int{})
    }
    List := []Int{}
    root.children @ ea {
        List += Postorder(ea)
    }
    List += root.val
    <- (List)
}
