//
//  equalPairs.swift
//  geunho
//
//  Created by 정근호 on 11/9/25.
//

import Foundation

func equalPairs(_ grid: [[Int]]) -> Int {
            
    var count = 0
    var rows = [[Int]]()
    var cols = Array(repeating: [Int](), count: grid.count)
    
    for i in 0..<grid.count {
        let row = grid[i]
//        print(row)
        for j in 0..<grid.count {
            cols[i].append(grid[j][i])
        }
        rows.append(row)
    }
    
//    print(rows, cols)
    
    for i in 0..<grid.count {
        for j in 0..<grid.count {
            if rows[i] == cols[j] {
                count += 1
            }
        }
    }
    return count
}


func equalPairs1(_ grid: [[Int]]) -> Int {
    
    var dict = [[Int]:Int]()
    var count = 0
    
    for row in grid {
        dict[row, default: 0] += 1
    }
    print(dict)
    
    for i in 0..<grid.count {
        let col = grid.map { $0[i] }
        if let rowCount = dict[col] {
            count += rowCount
        }
    }
    return count
}
