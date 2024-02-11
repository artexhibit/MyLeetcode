import Foundation

//102. Binary Tree Level Order Traversal
//https://leetcode.com/problems/binary-tree-level-order-traversal/description/

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard root != nil else { return [] }
    
    var res = [[Int]]()
    var stack = [root]
    
    while stack.count != 0 {
        var level = [Int]()
        
        for node in stack {
            stack.removeFirst()
            level.append(node!.val)
            
            if node!.left != nil {
                stack.append(node!.left)
            }
            if node!.right != nil {
                stack.append(node!.right)
            }
        }
        res.append(level)
    }
    return res
}

let treeNode = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))

levelOrder(treeNode)
