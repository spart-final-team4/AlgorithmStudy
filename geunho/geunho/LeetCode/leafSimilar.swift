//
//  leafSimilar.swift
//  geunho
//
//  Created by 정근호 on 11/17/25.
//

import Foundation

// 재귀
func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    
    var leaves1 = [Int]()
    var leaves2 = [Int]()
    
    collect(root1, &leaves1)
    collect(root2, &leaves2)
    
    return leaves1 == leaves2
}

func collect(_ node: TreeNode?, _ leaves: inout [Int]) {
    guard let node else { return }
    
    collect(node.left, &leaves)
    collect(node.right, &leaves)
    
    if node.left == nil && node.right == nil {
        leaves.append(node.val)
    }
}

// 스택 버전
func leafSimilar1(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    return getLeaves(root1) == getLeaves(root2)
}

func getLeaves(_ root: TreeNode?) -> [Int] {
    guard let root else { return [] }
    
    var stack: [TreeNode] = [root]
    var result: [Int] = []
    
    while !stack.isEmpty {
        let node = stack.removeLast()
        
        // Leaf check
        if node.left == nil && node.right == nil {
            result.append(node.val)
        }
        
        // Push right first, then left
        if let right = node.right { stack.append(right) }
        if let left = node.left { stack.append(left) }
    }
    return result
}

