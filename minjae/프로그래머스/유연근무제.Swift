//
//  유연근무제.Swift
//  
//
//  Created by MJ on 11/5/25.
//

import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    
    var result = 0
    
    for i in 0..<schedules.count {
        let timelog = timelogs[i]
        var worktime = schedules[i] + 10
        var arrayWorktime = Array(String(worktime)).map{Int(String($0))!}
        
        var event: Bool = true
        
        print(arrayWorktime)
        if arrayWorktime.count == 4 {
            if arrayWorktime[2] == 6 {
                arrayWorktime[2] = 0
                arrayWorktime[1] += 1
            }
        } else {
            if arrayWorktime[1] == 6 {
                arrayWorktime[1] = 0
                arrayWorktime[0] += 1
            }
        }
        
        var convertedWorktime = arrayWorktime.map{String($0)}.joined(separator: "")
        print(convertedWorktime)
        
        for j in 0..<timelog.count {
            var todayWeek = (j + startday) % 7
            if todayWeek == 0 { todayWeek = 7 }
            
            if todayWeek == 6 || todayWeek == 7 { continue }
            
            let arrived = timelog[j]
            let integerWorktime = Int(convertedWorktime)!
            if arrived > integerWorktime {
                event = false
                break
            }
            
        }
        
        if event { result += 1 }
    }
    
    
    return result
}
