Solution. -> {
    postorder(root: Node) -> (v: [i32]) {
        ? root == nil {
            <- ([i32]{})
        }
        list := [i32]{}
        @ ea <- root.children {
            list += postorder(ea)
        }
        list += root.val
        <- (list)
    }
}