Solution {
    Library
}

addTwoNumbers (l1,l2:ListNode)->(v:ListNode) {
    head := ListNode{0}
    _(p,q,current) := _(l1,l2,head)
    carry := 0
    @ ? p ~= nil | q ~= nil {
        x := 0
        ? p ~= nil {
            x = p.val
        }
        y := 0
        ? q ~= nil {
            y = q.val
        }

        sum := x + y + carry
        carry = sum/10
        current.next = ListNode{sum%10}
        current = current.next 
        ? p ~= nil {
            p = p.next
        }
        ? q ~= nil {
            q = q.next
        }
    }
    ? carry > 0 {
        current.next = ListNode{carry}
    }
    <- (head.next)
}