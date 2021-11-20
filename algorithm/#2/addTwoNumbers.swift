/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return add(l1: l1, l2: l2, val: 0)
    }

    func add(l1: ListNode?, l2: ListNode?, val: Int) -> ListNode? {
        let (sum, next1, next2): (Int, ListNode?, ListNode?)
        switch (l1, l2) {
            case let (n1?, n2?):
                (sum, next1, next2) = (n1.val + n2.val + val, n1.next, n2.next)
            case (let n?, nil):
                (sum, next1, next2) = (n.val + val, n.next, nil)
            case (nil, let n?):
                (sum, next1, next2) = (n.val + val, n.next, nil)
            default:
                if (val > 0) {
                    return ListNode(val)
                } else {
                    return nil
                } 
        }
        return ListNode(sum % 10, add(l1: next1, l2: next2, val: sum / 10))
    }
}