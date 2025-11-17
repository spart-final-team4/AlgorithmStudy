//
//  maxDepth.swift
//  geunho
//
//  Created by 정근호 on 11/17/25.
//

import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
//    guard root != nil else { return 0 }
    guard let root else { return 0 }
    
    let leftDepth = maxDepth(root.left)
    let rightDepth = maxDepth(root.right)
    
//    print(leftDepth, rightDepth)
    
//    return leftDepth > rightDepth ? leftDepth + 1 : rightDepth + 1
    return max(leftDepth, rightDepth) + 1
}
