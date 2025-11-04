//
//  test.swift
//  geunho
//
//  Created by 정근호 on 11/4/25.
//

import Foundation

func Test() {
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
    
    print("\n📋[SEQUENCE]📋")
    let some: any Sequence = "Is it Sequence?"
    var string: String = "String"
    var array: Array = [1, 2, 3]
    var set: Set<Int> = [4, 5, 6, 6]
    var dictionary: [String:Int] = ["a": 1]
    print(some, array)
    print(array[0])
    print(set)
    print(dictionary)
    
    // Copy On Write
    var string2 = string
    var array2 = array
    var set2 = set
    var dictionary2 = dictionary
    
    print("수정 전(복사본)")
    print("[String]", address(of: string), address(of: string2))
    print("[String]", bufferAddress(of: string), bufferAddress(of: string2))
    print("[Array]", address(of: array), address(of: array2))
    //print(address(of: set), address(of: set2))
    //print(address(of: dictionary), address(of: dictionary2))
    
    string = string + ["C", "H"]
    string.append("12123123")
    string.append("1123123123")
    string.append("1123123123")
    array.append(4)
    array.append(5)
    array.append(6)
    array.append(contentsOf: [7,8,9])
    set.insert(7)
    dictionary["b"] = 2
    
    print("수정 후(주소값 변경)")
    print("[String]", address(of: string), address(of: string2))
    print("[String]", bufferAddress(of: string), bufferAddress(of: string2))
    print("[Array]", address(of: array), address(of: array2))
    
    //string.append("123")
    //print("[String] after append\n", address(of: string), address(of: string2))
    
    
    // Array의 COW 확인 (간단)
    var arr1 = [1, 2, 3]
    var arr2 = arr1
    
    print("같은 버퍼?", arr1.withUnsafeBufferPointer { $0.baseAddress } ==
          arr2.withUnsafeBufferPointer { $0.baseAddress })  // true
    
    arr1.append(4)
    
    print("같은 버퍼?", arr1.withUnsafeBufferPointer { $0.baseAddress } ==
          arr2.withUnsafeBufferPointer { $0.baseAddress })  // false
    
    print(arr1.withUnsafeBufferPointer { $0.baseAddress } as Any)
}
