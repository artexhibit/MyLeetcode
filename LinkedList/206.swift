import Foundation

//206. Reverse Linked List
//https://leetcode.com/problems/reverse-linked-list/description/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var h = head
    var reversed: ListNode?
    
    while h != nil {
        var nextNode = h?.next
        
        h?.next = reversed
        reversed = h!
        h = nextNode
    }
    return reversed
}
let listFour = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6, ListNode(7, ListNode(8, ListNode(7, ListNode(6, ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))))))))))))

reverseList(listFour)
