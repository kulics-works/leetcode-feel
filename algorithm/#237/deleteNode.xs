Delete Node(node: ^ListNode) -> () {
    node.val = node.next.val
    node.next = node.vext.next
}
