AddTwoNumbers(l1: ^ListNode, l2: ^ListNode) -> (v: ^ListNode) {
    head := New<ListNode>(0)
    (p, q, current) := (l1, l2, head)
    carry := 0

    @ p >< () | q >< () {
        x := 0
        ? p >< () {
            x = p.Val
        }
        y := 0
        ? q >< () {
            y = q.Val
        }

        sum := x + y + carry
        carry = sum/10
        current.Next = New<ListNode>(sum%10)
        current = current.Next 
        ? p >< () {
            p = p.Next
        }
        ? q >< () {
            q = q.Next
        }
    }

    ? carry > 0 {
        current.Next = ListNode(carry)
    }
    <- (head.Next)
}
