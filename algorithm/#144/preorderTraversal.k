#=
Definition for a binary tree node.
TreeNode : $ {
    Val int
    Left ?TreeNode
    Right ?TreeNode
}
=#
preorderTraversal : (root ?TreeNode->v []int) {
    ? root == nil {
        <- nil
    }
    arr : []int{}
    arr.add(root.Val)
    temp! : preorderTraversal(root.Left)
    ? temp >< nil {
        arr.add(temp)
    }
    temp = preorderTraversal(root.Right)
    ? temp >< nil {
        arr.add(temp)
    }
    <- arr
}