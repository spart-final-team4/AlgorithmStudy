//
//  searchBST.swift
//  geunho
//
//  Created by 정근호 on 11/18/25.
//

import Foundation

func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    
    guard let root else { return nil }
    var result: TreeNode? = nil
    var queue: [TreeNode] = [root]
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        
        if node.val == val {
            result = node
        }
    
        if let left = node.left { queue.append(left) }
        if let right = node.right { queue.append(right) }
        
    }
    return result
}

// 모범답안 - DFS, 재귀 버전
func searchBST1(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root else { return nil }
    if root.val == val { return root }
    if root.val > val {
        return searchBST1(root.left, val)
    }
    if root.val < val {
        return searchBST1(root.right, val)
    }
    return nil
}
