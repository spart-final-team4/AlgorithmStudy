//
//  [PCCP 기출문제] 1번 : 동영상 재생기.swift
//  
//
//  Created by MJ on 11/6/25.
//

import Foundation

func solution(_ video_len:String,
              _ pos:String,
              _ op_start:String,
              _ op_end:String,
              _ commands:[String]) -> String {
    let videoLengthArray = video_len.components(separatedBy: ":").map{Int($0)!}
    let currentArray = pos.components(separatedBy: ":").map{Int($0)!}
    let openingStartArray = op_start.components(separatedBy: ":").map{Int($0)!}
    let openingEndArray = op_end.components(separatedBy: ":").map{Int($0)!}
    
    var videoLen = videoLengthArray[0] * 60 + videoLengthArray[1]
    var current = currentArray[0] * 60 + currentArray[1]
    var openingStart = openingStartArray[0] * 60 + openingStartArray[1]
    var openingEnd = openingEndArray[0] * 60 + openingEndArray[1]
    
    for i in 0...commands.count {
        
        if (openingStart...openingEnd).contains(current) {
            current = openingEnd
        }
        
        if i == commands.count { continue }
                                
        switch commands[i] {
            case "next":
                current += 10
                if current > videoLen {
                    current = videoLen
                }
            case "prev":
                current -= 10
                if current < 0 {
                    current = 0
                }
            default:
            continue
        }
    }
    
    var minute = String(current / 60)
    var second = String(current % 60)
    if minute.count == 1 { minute = "0" + minute }
    if second.count == 1 { second = "0" + second }
    
    return "\(minute):\(second)"
}
