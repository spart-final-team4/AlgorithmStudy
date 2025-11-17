//
//  goodNodes.swift
//  geunho
//
//  Created by 정근호 on 11/17/25.
//

import Foundation

func goodNodes(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    return countGoodNodes(root, root.val)
}

func countGoodNodes(_ node: TreeNode?, _ maxSoFar: Int) -> Int {
    guard let node else { return 0 }
    
    var count = 0
    if node.val >= maxSoFar { count = 1 }
    
    let newMax = max(maxSoFar, node.val)
    
    count += countGoodNodes(node.left, newMax)
    count += countGoodNodes(node.right, newMax)
    
    return count
}


