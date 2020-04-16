#=
Definition for a binary tree node.
TreeNode : $ {
    Val int
    Left ?TreeNode
    Right ?TreeNode
}
=#
inorderTraversal : (root ?TreeNode->v []int) {
    ? root == nil {
        <- nil
    }
    arr : []int{}
    temp : inorderTraversal(root.Left)
    ? temp >< nil {
        arr.add(temp..)
    }
    arr.add(root.Val)
    temp = inorderTraversal(root.Right)
    ? temp >< nil {
        arr.add(temp..)
    }
    <- arr
}