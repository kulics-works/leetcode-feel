Solution -> {
    AddTwoNumbers(l1: ListNode, l2: ListNode) -> (v: ListNode) {
        head := ListNode(0)
        (p, q, current) := (l1, l2, head)
        carry := 0
        @ ? p >< Nil | q >< Nil {
            x := 0
            ? p >< Nil {
                x = p.Val
            }
            y := 0
            ? q >< Nil {
                y = q.Val
            }

            sum := x + y + carry
            carry = sum/10
            current.Next = ListNode(sum%10)
            current = current.Next 
            ? p >< Nil {
                p = p.Next
            }
            ? q >< Nil {
                q = q.Next
            }
        }
        ? carry > 0 {
            current.Next = ListNode(carry)
        }
        <- (head.Next)
    }
}