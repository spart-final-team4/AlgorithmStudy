//
//  canVisitAllRooms.swift
//  geunho
//
//  Created by 정근호 on 11/19/25.
//

import Foundation

func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
    var seen = Array(repeating: false, count: rooms.count)
    seen[0] = true
    var stack = [0]
    
    while !stack.isEmpty {
        let node = stack.removeLast()
        for key in rooms[node] {
            if !seen[key] {
                seen[key] = true
                stack.append(key)
            }
        }
    }
    return !seen.contains(false)
}
