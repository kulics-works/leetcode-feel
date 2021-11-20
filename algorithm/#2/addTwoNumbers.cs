/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int x) { val = x; }
 * }
 */
public class Solution {
    public ListNode? AddTwoNumbers(ListNode? l1, ListNode? l2) {
        return Add(l1, l2, 0);
    }

    static ListNode? Add(ListNode? l1, ListNode? l2, int val)
    {
        (int sum, ListNode? next1, ListNode? next2) = (0, null, null);
        switch ((l1, l2)) 
        {
            case (ListNode n1, ListNode n2):
                (sum, next1, next2) = (n1.val + n2.val + val, n1.next, n2.next);
                break;
            case (ListNode n, null):
                (sum, next1, next2) = (n.val + val, n.next, null);
                break;
            case (null, ListNode n):
                (sum, next1, next2) = (n.val + val, n.next, null);
                break;
            default:
                if (val > 0)
                {
                    return new ListNode(val);
                }
                else
                {
                    return null;
                }
        }
        var node = new ListNode(0);
        node.val = sum % 10;
        node.next = Add(next1, next2, sum / 10);
        return node;
    }
}