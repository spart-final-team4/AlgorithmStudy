//
//  main.swift
//  geunhoAlgo
//
//  Created by 정근호 on 10/28/25.
//

import Foundation

// MARK: - Result
print(mergeAlternately("abc", "qpr"))
print(mergeAlternately2("abc", "qpr"))







// MARK: - Test
print("\n📋[CHARACTER, ZIP]📋")
var str = "String"
let b: Character = "B"
let c: Character = "C"

print(str + [b]) // String + [Character]
print(type(of: [b]))
//print(b+c) // Character는 + 불가능
str += [b, c, b, c]
print(str)

let w1 = "abc"
let w2 = "123"
let zipped = zip(w1, w2)
print(zipped.map { $0 })


