//
//  RecentCounter.swift
//  geunho
//
//  Created by 정근호 on 11/13/25.
//

import Foundation

class RecentCounter {
    
    var counters = [Int]()
    
    init() {}
    
    func ping(_ t: Int) -> Int {
        let range = [t - 3000, t]
        counters.append(t)
        
        for counter in counters {
            if counter < range[0] {
                counters.removeFirst()
            }
        }
        
        return counters.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */
