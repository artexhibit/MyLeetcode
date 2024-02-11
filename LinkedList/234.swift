import Foundation

//234. Palindrome Linked List
//https://leetcode.com/problems/palindrome-linked-list/description/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func isPalindrome(_ head: ListNode?) -> Bool {
    
    //1.Block: find the middle node of the List
    var slowPointer = head
    var fastPointer = head?.next
    
    while fastPointer?.next != nil {
        slowPointer = slowPointer?.next
        fastPointer = fastPointer?.next?.next
    }
    
    //2.Block: reverse the second half of the List, which starts after the slowPoint number
    var listSecondHalf = slowPointer?.next
    var reversedList = ListNode()
    
    while listSecondHalf != nil {
        var nextHead = listSecondHalf?.next
        
        listSecondHalf?.next = reversedList
        reversedList = listSecondHalf!
        listSecondHalf = nextHead
    }
    
    //3.Block: compare the reversed second List half with the Original List till the end of Reversed. If all numbers are equal - it's a palindrome.
    var originalList = head
    
    while reversedList.next != nil {
        if reversedList.val == originalList?.val {
            reversedList = reversedList.next!
            originalList = originalList?.next
        } else {
            return false
        }
    }
    return true
}

let listFour = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6, ListNode(7, ListNode(8, ListNode(7, ListNode(6, ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))))))))))))

isPalindrome(listFour)
