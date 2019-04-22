MergeTrees(t1: TreeNode, t2: TreeNode) -> (v: TreeNode) {
    result := TreeNode()

    ? t1 == Nil & t2 == Nil {
        result = Nil
    } t1 >< Nil & t2 == Nil {
        result = t1
    } t1 == Nil & t2 >< Nil {
        result = t2
    } _ {
        result.Val = t1.Val + t2.Val
        result.Left = MergeTrees(t1.Left, t2.Left)
        result.Right = MergeTrees(t1.Right, t2.Right)
    }
    <- (result)
}
