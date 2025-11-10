//
//  closeStrings.swift
//  geunho
//
//  Created by 정근호 on 11/9/25.
//

import Foundation

func closeStrings(_ word1: String, _ word2: String) -> Bool {
//    let alphabets = Set(word1)
//    print(alphabets)
//    
//    var counts1 = Set<Int>()
//    var counts2 = Set<Int>()
//    
//    for a in alphabets {
//        counts1.insert(word1.filter{$0==a}.count)
//        counts2.insert(word2.filter{$0==a}.count)
//    }
//    print(counts1, counts2)
//    return counts1 == counts2
    
    let set1 = Set(word1)
    let set2 = Set(word2)
    
    if set1 != set2 {
        return false
    }
    
    var freq1 = [Int]()
    var freq2 = [Int]()
    
    for ch in set1 {
        freq1.append(word1.filter{$0==ch}.count)
        freq2.append(word2.filter{$0==ch}.count)
    }
    
    return freq1.sorted() == freq2.sorted()
}
