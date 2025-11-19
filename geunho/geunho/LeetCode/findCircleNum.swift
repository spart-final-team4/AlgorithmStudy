//
//  findCircleNum.swift
//  geunho
//
//  Created by 정근호 on 11/19/25.
//

import Foundation

func findCircleNum(_ isConnected: [[Int]]) -> Int {
    let n = isConnected.count
    var seen = Array(repeating: false, count: n)
    var provinces = 0
    
    // 모든 도시를 확인
    for city in 0..<n {
        if !seen[city] {
            // DFS 시작
            var stack = [city]
            seen[city] = true
            
            while !stack.isEmpty {
                let current = stack.removeLast()
                
                // 연결된 모든 도시 확인
                for neighbor in 0..<n {
                    if isConnected[current][neighbor] == 1 && !seen[neighbor] {
//                        print(current, neighbor)
                        seen[neighbor] = true
                        stack.append(neighbor)
                    }
                }
            }
            provinces += 1
        }
    }
    return provinces
}
