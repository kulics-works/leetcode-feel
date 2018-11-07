Solution
{
    Library
}

searchBST (root:TreeNode, val:i32)->(v:TreeNode) 
{
    ? root == null 
    {
        <- (null)
    }
    ? root.val == val 
    {
        <- (root)
    } 
    ? root.val > val 
    {
        <- (searchBST.(root.left, val))
    } 
    ? 
    {
        <- (searchBST.(root.right, val))
    }
}