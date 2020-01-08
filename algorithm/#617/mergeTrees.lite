MergeTrees : (t1 ?TreeNode, t2 ?TreeNode -> v ?TreeNode) {
    Result ?TreeNode = TreeNode{}

    ? t1 == nil & t2 == nil {
        Result = nil
    } t1 >< nil & t2 == nil {
        Result = t1
    } t1 == nil & t2 >< nil {
        Result = t2
    } _ {
        Result.val = t1.val + t2.val
        Result.left = MergeTrees(t1.left, t2.left)
        Result.right = MergeTrees(t1.right, t2.right)
    }
    <- Result
}
