#=
Definition for a binary tree node.
TreeNode : $ {
    Val int
    Left ?TreeNode
    Right ?TreeNode
}
=#
levelOrder : (root ?TreeNode->v [][]int)  {
    levels = [][]int{}
    ? root == nil {
        <- levels
    }
    helper(root, 0)
    <- levels
}

helper : (root ?TreeNode, level int) {
    ? root == nil {
        <-
    }
    ? levels.len == level {
        levels.add([]int{})
    }
    levels[level].add(root.Val)
    helper(root.Left, level+1)
    helper(root.Right, level+1)
}

levels [][]int