#=
Definition for singly-linked list.
ListNode : $ {
    Val int
    Next ?ListNode
}
=#
reverseList : (head ?ListNode->v ?ListNode) {
    prev ?ListNode
    curr : head
    @ curr >< nil {
        nextTemp : curr.Next
        curr.Next = prev
        prev = curr
        curr = nextTemp
    }
    <- prev
}