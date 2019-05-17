Merge Trees(t1: ^TreeNode, t2: ^TreeNode) -> (v: ^TreeNode) {
    Result := TreeNode{}

    ? t1 == () & t2 == () {
        Result = ()
    } t1 >< () & t2 == () {
        Result = t1
    } t1 == () & t2 >< () {
        Result = t2
    } _ {
        Result.val = t1.val + t2.val
        Result.left = Merge Trees(t1.left, t2.left)
        Result.right = Merge Trees(t1.right, t2.right)
    }
    <- (Result)
}
