Solution -> {
    addTwoNumbers(l1: ListNode, l2: ListNode) -> (v: ListNode) {
        head := ListNode{0}
        (P, Q, Current) := (l1, l2, head)
        Carry := 0
        @ ? P ~= nil | Q ~= nil {
            X := 0
            ? P ~= nil {
                X = P.val
            }
            Y := 0
            ? Q ~= nil {
                Y = Q.val
            }

            sum := X + Y + Carry
            Carry = sum/10
            Current.next = ListNode{sum%10}
            Current = Current.next 
            ? P ~= nil {
                P = P.next
            }
            ? Q ~= nil {
                Q = Q.next
            }
        }
        ? Carry > 0 {
            Current.next = ListNode{Carry}
        }
        <- (head.next)
    }
}