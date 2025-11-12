//
//  maxOperations.swift
//  geunho
//
//  Created by 정근호 on 11/12/25.
//

import Foundation

func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    
    var dict = [Int:Int]()
    var count = 0
    
    // 각 숫자 개수 세기
    for num in nums {
        dict[num, default: 0] += 1
    }
        
    // 짝 찾기
    for num in nums {
        let need = k - num // 필요한 짝
        
        if dict[num, default: 0] > 0
            && dict[need, default: 0] > 0 {
            // 같은 숫자끼리 짝인 경우
            if num == need && dict[num]! < 2 {
                continue // 2개 미만이면 짝 못 만듦
            }
            
            dict[num]! -= 1
            dict[need]! -= 1
            count += 1
        }
    }
    return count
}

func maxOperations1(_ nums: [Int], _ k: Int) -> Int {
    var unpaired = [Int:Int]()
    var result = 0
    for num in nums {
        let pair = k - num
        if let count = unpaired[pair], count > 0 {
            result += 1
            unpaired[pair] = count - 1
        } else {
            unpaired[num, default: 0] += 1
        }
    }
    return result
}
