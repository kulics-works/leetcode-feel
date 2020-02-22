AddTwoNumbers : (l1 ?ListNode, l2 ?ListNode -> v ?ListNode) {
    Head : ListNode{val=0}
    P!, Q!, Current! = l1, l2, Head
    Carry! = 0

    @ P >< nil | Q >< nil {
        X! = 0
        ? P >< nil {
            X = P.val
        }
        Y! = 0
        ? Q >< nil {
            Y = Q.val
        }

        Sum! = X + Y + Carry
        Carry = Sum/10
        Current.next = ListNode{val=Sum % 10}
        Current = Current.next 
        ? P >< nil {
            P = P.next
        }
        ? Q >< nil {
            Q = Q.next
        }
    }

    ? Carry > 0 {
        Current.next = ListNode{val=Carry}
    }
    <- Head.next
}
