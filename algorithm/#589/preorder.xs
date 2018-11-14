Solution {
    Library
}

preorder (root:Node)->(v:[]i32) {
    ? root == null {
        <- ([]i32.{})
    }
    list := []i32.{}
    list += root.val
    root.children.@ {
        list += preorder.(ea)
    }
    <- (list)
}