import UIKit

//589. N-ary Tree Preorder Traversal
//https://leetcode.com/problems/n-ary-tree-preorder-traversal/description/

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

func preorder(_ root: Node?) -> [Int] {
    guard root != nil else { return [] }
    var result = [Int]()
    var stack = [root]
    
    while !stack.isEmpty {
        let node = stack.last!
        result.append(node!.val)
        stack.removeLast()
        
        if !node!.children.isEmpty {
            while !node!.children.isEmpty {
                stack.append(node!.children.last)
                node!.children.removeLast()
            }
        }
    }
    return result
}
