//
//  [PCCP 기출문제] 퍼즐 게임 챌린지.swift
//  
//
//  Created by MJ on 11/12/25.
//

import Foundation

// 이분탐색
func solution(_ diffs:[Int],
              _ times:[Int],
              _ limit:Int64) -> Int {
    var min = diffs.min()!
    var max = diffs.max()!

    while min < max {
        let mid = (max + min) / 2
        let time = calculate(level: mid, diffs: diffs, times: times)
        
        if time > limit {
            min = mid + 1
        } else if time <= limit {
            max = mid
        }
        
    }
    
    return min
}

func calculate(level: Int,
               diffs: [Int],
               times: [Int]) -> Int {
    var sum = 0
    for i in 0..<diffs.count {
        if level >= diffs[i] {
            sum += times[i]
        } else {
            if i == 0 {
                let time = (diffs[i] - level) * times[i]
                sum += time
            } else {
                let time = (diffs[i] - level) * (times[i] + times[i-1]) + times[i]
                sum += time
            }
        }
    }
    
    return sum
}
