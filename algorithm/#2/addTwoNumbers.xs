Solution {
    Library
}

addTwoNumbers (l1,l2:ListNode)->(v:ListNode) {
    head := ListNode.{0}
    (p,q,current) := (l1,l2,head)
    carry := 0
    @ p ~= null | q ~= null {
        x := 0
        ? p ~= null {
            x = p.val
        }
        y := 0
        ? q ~= null {
            y = q.val
        }

        sum := x + y + carry
        carry = sum/10
        current.next = ListNode.{sum%10}
        current = current.next 
        ? p ~= null {
            p = p.next
        }
        ? q ~= null {
            q = q.next
        }
    }
    ? carry > 0 {
        current.next = ListNode.{carry}
    }
    <- (head.next)
}