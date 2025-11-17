//
//  rightSideView.swift
//  geunho
//
//  Created by 정근호 on 11/17/25.
//

import Foundation

func rightSideView(_ root: TreeNode?) -> [Int] {
    //    guard let root else { return [] }
    //    var rightSides = [root.val]
    //    var queue: [TreeNode] = [root]
    //
    //    while !queue.isEmpty {
    //        let node = queue.removeFirst()
    ////        queue = []
    //
    //        if let left = node.left {
    //            queue.append(left)
    //        }
    //        if let right = node.right {
    //            queue.append(right)
    //        }
    //
    //        if let last = queue.last {
    //            rightSides.append(last.val)
    //        }
    //
    //        print(queue.map { $0.val })
    //    }
    //    return rightSides
    
    guard let root else { return [] }
    var rightSides = [Int]()
    var queue: [TreeNode] = [root]
    
    while !queue.isEmpty {
        /// 현재 레벨의 노드 개수
        let levelSize = queue.count
        
        // 현재 레벨의 모든 노드 처리
        for i in 0..<levelSize {
            let node = queue.removeFirst()
            
            // 마지막 노드면 결과에 추가
            if i == levelSize - 1 {
                rightSides.append(node.val)
            }
            
            // 다음 레벨 노드들 추가
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }
    }
    return rightSides
}

// flatMap, compactMap 이용 풀이
func rightSideView1(_ root: TreeNode?) -> [Int] {
    var bfs = [root].compactMap{$0}
    var result = [Int]()
    while !bfs.isEmpty {
        result.append(bfs.last!.val)
        /*
        2 → [$0.left, $0.right] → [nil, 5] → compactMap → [5]
        3 → [$0.left, $0.right] → [nil, 4] → compactMap → [4]
        결과: [[5], [4]]
        flatMap → [5, 4]
        */
        bfs = bfs.flatMap {
            [$0.left,$0.right].compactMap{ $0 }
        }
    }
    return result
}
