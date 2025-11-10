//
//  shortestPathBinaryMatrix.swift
//  geunho
//
//  Created by 정근호 on 11/5/25.
//

import Foundation

// TODO: - 이해 필요
func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
    let n = grid.count
    
    if grid[0][0] == 1 || grid[n-1][n-1] == 1 {
        return -1
    }
    
    let directions = [
        (-1, -1), (-1, 0), (-1, 1),
        (0, -1), (0, 1),
        (1, -1), (1, 0), (1, 1)
    ]
    
    var queue: [(row: Int, col: Int, distance: Int)] = [(0,0,1)]
    
    var visited = grid
    visited[0][0] = 1
    
    var index = 0
    while index < queue.count {
        let current = queue[index]
        index += 1
        
        if current.row == n-1 && current.col == n-1 {
            return current.distance
        }
        
        for direction in directions {
            let newRow = current.row + direction.0
            let newCol = current.col + direction.1
            
            if newRow >= 0 && newRow < n &&
                newCol >= 0 && newCol < n &&
                visited[newRow][newCol] == 0 {
                queue.append((newRow, newCol, current.distance+1))
                visited[newRow][newCol] = 1
            }
        }
    }
    return -1
}
