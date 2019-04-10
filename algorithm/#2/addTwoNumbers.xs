Solution -> {
    AddTwoNumbers(l1: ListNode, l2: ListNode) -> (v: ListNode) {
        head := ListNode(0)
        (p, q, current) := (l1, l2, head)
        carry := 0
        @ p ~= nil | q ~= nil {
            x := 0
            ? p ~= nil {
                x = p.Val
            }
            y := 0
            ? q ~= nil {
                y = q.Val
            }

            sum := x + y + carry
            carry = sum/10
            current.Next = ListNode(sum%10)
            current = current.Next 
            ? p ~= nil {
                p = p.Next
            }
            ? q ~= nil {
                q = q.Next
            }
        }
        ? carry > 0 {
            current.Next = ListNode(carry)
        }
        <- (head.Next)
    }
}