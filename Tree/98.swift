import Foundation

//98. Validate Binary Search Tree
//https://leetcode.com/problems/validate-binary-search-tree/description/

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

func isValidBST(_ root: TreeNode?) -> Bool {
    var stack = [TreeNode]()
    var rootNode: TreeNode? = root
    var leftNode = Int.min
    
    while !stack.isEmpty || rootNode != nil {
        while rootNode != nil {
            stack.append(rootNode!)
            rootNode = rootNode?.left
        }
        rootNode = stack.removeLast()
        
        if rootNode!.val <= leftNode { return false }
        leftNode = rootNode!.val
        rootNode = rootNode?.right
    }
    return true
}

let treeNode = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))

isValidBST(treeNode)
