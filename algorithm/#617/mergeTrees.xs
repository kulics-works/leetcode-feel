Solution {
    Library
}

mergeTrees (t1, t2:TreeNode)->(v:TreeNode) {
    result := TreeNode{}

    ? t1 == nil & t2 == nil {
        result = nil
    } t1 ~= nil & t2 == nil {
        result = t1
    } t1 == nil & t2 ~= nil {
        result = t2
    } _ {
        result.val = t1.val + t2.val
        result.left = mergeTrees(t1.left, t2.left)
        result.right = mergeTrees(t1.right, t2.right)
    }
    <- (result)
}