import Foundation

//21. Merge Two Sorted Lists
//https://leetcode.com/problems/merge-two-sorted-lists/description/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    //dummy List to receive sorted data with a base number
    var head = ListNode(-1)
    //tail of the head. The value will be assigned to head once it was assigned to current
    var current = head
    
    //we need to have access to lists comparison
    var l1 = list1
    var l2 = list2
    
    while l1 != nil || l2 != nil {
        if l1 == nil {
            //assign value
            current.next = l2!
            //move list pointer forward
            l2 = l2!.next
        } else if l2 == nil {
            current.next = l1!
            l1 = l1!.next
        } else if l1!.val < l2!.val {
            current.next = l1!
            l1 = l1!.next
        } else {
            //l2.val < l1.val
            current.next = l2!
            l2 = l2!.next
        }
        //move current pointer forward (it will be reset to nil)
        current = current.next!
    }
    return head.next
}

let listOne = ListNode(1, ListNode(2, ListNode(4)))
let listTwo = ListNode(1, ListNode(3, ListNode(4)))
mergeTwoLists(listOne, listTwo)
