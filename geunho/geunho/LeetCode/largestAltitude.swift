//
//  largestAltitude.swift
//  geunho
//
//  Created by 정근호 on 11/9/25.
//

import Foundation

func largestAltitude(_ gain: [Int]) -> Int {
    var highest = 0
    var altitudes = [Int]()
    altitudes.append(0)
    for g in gain {
        highest += g
        altitudes.append(highest)
    }
    return altitudes.max()!
}

func largestAltitude1(_ gain: [Int]) -> Int {
    var currentAltitude = 0
    var highestAltitude = currentAltitude
    
    for altitudeGain in gain {
        currentAltitude += altitudeGain
        highestAltitude = max(currentAltitude, highestAltitude)
    }
    return highestAltitude
}
