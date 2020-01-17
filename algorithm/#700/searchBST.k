SearchBST : (root ?TreeNode, val int -> v TreeNode) {
    ? root == nil {
        <- nil
    } root.val == val {
        <- root
    } root.val > val {
        <- SearchBST(root.left, val)
    } _ {
        <- SearchBST(root.right, val)
    }
}
