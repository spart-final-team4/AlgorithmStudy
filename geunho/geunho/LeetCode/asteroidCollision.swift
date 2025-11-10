//
//  asteroidCollision.swift
//  geunho
//
//  Created by 정근호 on 11/9/25.
//

import Foundation

func asteroidCollision(_ asteroids: [Int]) -> [Int] {
//    var left = 0
//    var result = [Int]()
//    
//    for i in 0..<asteroids.count {
//        if asteroids[i] < 0 || i == asteroids.count-1 {
//            let rightAst = asteroids[left..<i].filter { $0 >= abs(asteroids[i]) }
//            left = i+1
//            if rightAst.isEmpty {
//                result.append(asteroids[i])
//            } else {
//                result.append(contentsOf: rightAst.filter { $0 != asteroids[i]})
//            }
//        }
//    }
    
    var result = [Int]()

    for ast in asteroids {
        if ast > 0 {
            result.append(ast)
        } else {
            while !result.isEmpty
                    && result.last! > 0
                    && result.last! < abs(ast) {
                result.removeLast()
            }
            
            if result.isEmpty {
                result.append(ast)
            } else if result.last! < 0 {
                result.append(ast)
            } else if result.last! == abs(ast) {
                result.removeLast()
            }
        }
    }
    
    return result
}
