//
//  predictPartyVictory.swift
//  geunho
//
//  Created by 정근호 on 11/14/25.
//

import Foundation

func predictPartyVictory(_ senate: String) -> String {
//    var rCount = 0
//    var dCount = 0
//    var senate = senate
//    for s in senate {
//        if s == "R" {
//            rCount += 1
//        } else if s == "D" {
//            dCount += 1
//        }
//    }
//
//    if rCount == dCount {
//        return senate.removeLast() == "R" ? "Dire" : "Radiant"
//    } else {
//        return rCount > dCount ? "Radiant" : "Dire"
//    }
    
    var radiantIndicies = [Int]()
    var direIndicies = [Int]()

    // 인덱스 저장
    for (i, s) in senate.enumerated() {
        if s == "R" {
            radiantIndicies.append(i)
        } else {
            direIndicies.append(i)
        }
    }
    
    // 두 큐가 모두 비어있지 않는 동안 반복
    while !radiantIndicies.isEmpty && !direIndicies.isEmpty {
        let rIndex = radiantIndicies.removeFirst()
        let dIndex = direIndicies.removeFirst()
        
        // 인덱스가 작은 쪽이 먼저 행동하여 상대를 제거
        if rIndex < dIndex {
            // Radiant가 이겼으므로 다시 큐에 추가 (다음 라운드를 위해)
            radiantIndicies.append(rIndex+senate.count)
        } else {
            direIndicies.append(dIndex+senate.count)
        }
    }
    
    return radiantIndicies.isEmpty ? "Dire" : "Radiant"
}

func predictPartyVictory1(_ senate: String) -> String {
    let senate = Array(senate)
    let n = senate.count
    var radiants = senate.indices.filter { senate[$0] == "R" }
    var dices = senate.indices.filter { senate[$0] == "D" }
    
    while !radiants.isEmpty || !dices.isEmpty {
        guard let rI = radiants.first else { return "Dire" }
        guard let dI = dices.first else { return "Radiants" }
        
        if rI < dI {
            dices.removeFirst()
            radiants.append(radiants.removeFirst() + n)
        } else {
            radiants.removeFirst()
            dices.append(dices.removeFirst() + n)
        }
    }
    fatalError("Incorrect input")
}
