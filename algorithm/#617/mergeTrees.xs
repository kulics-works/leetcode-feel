Solution -> {
    MergeTrees(t1: TreeNode, t2: TreeNode) -> (v: TreeNode) {
        result := TreeNode()

        ? t1 == nil & t2 == nil {
            result = nil
        } t1 ~= nil & t2 == nil {
            result = t1
        } t1 == nil & t2 ~= nil {
            result = t2
        } _ {
            result.Val = t1.Val + t2.Val
            result.Left = MergeTrees(t1.Left, t2.Left)
            result.Right = MergeTrees(t1.Right, t2.Right)
        }
        <- (result)
    }
}