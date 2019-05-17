Add Two Numbers(l1: ^ListNode, l2: ^ListNode) -> (v: ^ListNode) {
    Head := <ListNode>(0)
    (P, Q, Current) := (l1, l2, Head)
    Carry := 0

    @ P >< () | Q >< () {
        X := 0
        ? P >< () {
            X = P.val
        }
        Y := 0
        ? Q >< () {
            Y = Q.val
        }

        Sum := X + Y + Carry
        Carry = Sum/10
        Current.next = <ListNode>( Sum % 10 )
        Current = Current.next 
        ? P >< () {
            P = P.next
        }
        ? Q >< () {
            Q = Q.next
        }
    }

    ? Carry > 0 {
        Current.next = <ListNode>(Carry)
    }
    <- (Head.next)
}
