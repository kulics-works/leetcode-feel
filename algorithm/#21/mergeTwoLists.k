#=
Definition for singly-linked list.
ListNode : $ {
    Val int
    Next ?ListNode
}
=#
mergeTwoLists : (l1 ?ListNode, l2 ?ListNode->v ?ListNode) {
    ? l1 == nil {
        <- l2
    }
    ? l2 == nil {
        <- l1
    }
    ? l1.Val > l2.Val {
        l2.Next = mergeTwoLists(l1, l2.Next)
        <- l2
    } _ {
        l1.Next = mergeTwoLists(l2, l1.Next)
        <- l1
    }
}