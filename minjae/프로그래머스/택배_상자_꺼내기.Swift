import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
    
    var idx = 1
    var boxed = [[Int]]()
    var reversed = false
    var count = 0
    var height = 0
    var dx = 0
    var dy = 0
    
    while idx <= n {
        var endIdx = idx + w - 1
        while endIdx > n {
            endIdx -= 1
        }
        var boxs = Array(idx...endIdx)
        
        while boxs.count < w {
            boxs.append(0)
        }
        
        if reversed {
            boxs = boxs.reversed()
        }
        
        for i in 0..<boxs.count {
            if boxs[i] == num {
                dx = i
                dy = height
                break
            }
        }
        boxed.append(boxs)
        reversed = !reversed
        idx = endIdx + 1
        height += 1
    }

    for i in dy..<boxed.count {
        if boxed[i][dx] != 0 {
            print(boxed[i][dx])
            count += 1
        }
    }
    return count
}
