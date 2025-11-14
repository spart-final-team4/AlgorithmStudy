//
//  methods.swift
//  geunho
//
//  Created by 정근호 on 10/28/25.
//

import Foundation

/// 주소값 출력 메서드 (스택의 변수 주소)
func address(of object: UnsafeRawPointer) -> String {
    let length = String(reflecting: object).count
    return String(reflecting: object)
}

/// 실제 내부 버퍼 주소 (힙 메모리 주소)
func bufferAddress(of string: String) -> String {
    string.withCString { ptr in
        return "\(ptr)"
    }
}

/// 배열을 LinkedList로 변환
func createLinkedList(_ values: [Int]) -> ListNode? {
    guard !values.isEmpty else { return nil }
    
    let head = ListNode(values[0])
    var current = head
    
    for i in 1..<values.count {
        current.next = ListNode(values[i])
        current = current.next!
    }
    
    return head
}

/// Linked List 출력
func printLinkedList(_ head: ListNode?) {
    var current = head
    var result = [String]()
    
    while current != nil {
        result.append("\(current!.val)")
        current = current?.next
    }
    
    print(result.joined(separator: " -> "))
}
