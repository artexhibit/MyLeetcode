import Foundation

//142. Linked List Cycle II
//https://leetcode.com/problems/linked-list-cycle-ii/description/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func detectCycle(_ head: ListNode?) -> ListNode? {
    var slowP = head
    var fastP = head
    var indexP = head
    
    while slowP?.next != nil && fastP?.next != nil {
        slowP = slowP?.next
        fastP = fastP?.next?.next
        
        if slowP === fastP {
            while indexP !== slowP {
                indexP = indexP?.next
                slowP = slowP?.next
            }
            return indexP
        }
    }
    return nil
}

let list = ListNode(1, ListNode(2, ListNode(4)))

detectCycle(list)
