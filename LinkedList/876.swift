import UIKit

//876. Middle of the Linked List
//https://leetcode.com/problems/middle-of-the-linked-list/description/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func middleNode(_ head: ListNode?) -> ListNode? {
    var slowPointer = head
    var fastPointer = head?.next
    
    while fastPointer?.next != nil {
        slowPointer = slowPointer?.next
        fastPointer = fastPointer?.next?.next
    }
    
    if fastPointer != nil {
        slowPointer = slowPointer?.next
    }
    return slowPointer
}

let listThree = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))

middleNode(listThree)
