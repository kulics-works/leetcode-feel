#=
Definition for a binary tree node.
TreeNode : $ {
    Val int
    Left ?TreeNode
    Right ?TreeNode
}
=#
postorderTraversal : (root ?TreeNode->v []int) {
    ? root == nil {
        <- nil
    }
    arr : []int{}
    temp! : postorderTraversal(root.Left)
    ? temp >< nil {
        arr.add(temp..)
    }
    temp = postorderTraversal(root.Right)
    ? temp >< nil {
        arr.add(temp..)
    }
    arr.add(root.Val)
    <- arr
}