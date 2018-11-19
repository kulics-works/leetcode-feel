Solution {
    Library
}

mergeTrees (t1, t2:TreeNode)->(v:TreeNode) {
    result := TreeNode{}

    ? t1 == null & t2 == null {
        result = null
    } t1 ~= null & t2 == null {
        result = t1
    } t1 == null & t2 ~= null {
        result = t2
    } _ {
        result.val = t1.val + t2.val
        result.left = mergeTrees(t1.left, t2.left)
        result.right = mergeTrees(t1.right, t2.right)
    }
    <- (result)
}