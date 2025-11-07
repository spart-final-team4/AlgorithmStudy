//
//  가장 많이 받은 선물.swift
//  
//
//  Created by MJ on 11/7/25.
//

import Foundation

func solution(_ friends:[String],
              _ gifts:[String]) -> Int {
    
    var dict: [String: Int] = [:]
    var giftHistory = Array(repeating: Array(repeating: 0, count: friends.count), count: friends.count)
    var result = Int.min
    var friendDict = [String: Int]()
    var giftList = Array(repeating: 0, count: friends.count)
    var idx = 0
    
    friends.forEach {
        friendDict[$0] = idx
        dict[$0] = 0
        idx += 1
    }
    
    for i in 0..<gifts.count {
        
        let history = gifts[i].components(separatedBy: " ")
        dict[history[0]]! += 1
        dict[history[1]]! -= 1
        giftHistory[friendDict[history[0]]!][friendDict[history[1]]!] += 1
    }
    
    for i in 0..<friends.count {
        for j in 0..<friends.count {
            if i == j { continue }
            if giftHistory[i][j] > giftHistory[j][i] {
                giftList[i] += 1
            } else if giftHistory[i][j] == giftHistory[j][i] {
                if dict[friends[i]]! > dict[friends[j]]! {
                    giftList[i] += 1
                }
            }
        }
        if giftList[i] > result { result = giftList[i] }
    }
    return result
}
