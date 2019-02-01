Solution -> {
    preorder(root: Node) -> (v: [i32]) {
        ? root == nil {
            <- ([i32]{})
        }
        list := [i32]{}
        list += root.val
        @ ea <- root.children {
            list += preorder(ea)
        }
        <- (list)
    }
}