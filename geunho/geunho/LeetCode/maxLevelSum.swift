//
//  maxLevelSum.swift
//  geunho
//
//  Created by 정근호 on 11/17/25.
//

import Foundation

func maxLevelSum(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    
    var queue: [TreeNode] = [root]
    var maxSum = root.val
    var maxLevel = 1
    var level = 1
    
    while !queue.isEmpty {
        let levelSize = queue.count
        var currentSum = 0

        for _ in 0..<levelSize {
            let node = queue.removeFirst()
            
            currentSum += node.val
            
            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }
        
        if currentSum > maxSum {
            maxLevel = level
            maxSum = currentSum
        }
        
        level += 1
    }
    return maxLevel
}
