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

/// 배열을 TreeNode로 변환 (BFS)
/// Queue 사용: 부모 노드들 순서대로 처리
/// Index 추적: 배열의 어디를 읽고 있는지 추적
/// 각 노드마다 2개씩: 왼쪽 자식, 오른쪽 자식 순서로 배열 읽기
/// nil 처리: nil이면 자식을 만들지 않고 건너 뜀
func createTreeNode(_ values: [Int?]) -> TreeNode? {
    guard !values.isEmpty, let firstVal = values[0] else { return nil }
    
    // 루트 노드 설정
    let root = TreeNode(firstVal)
    var queue: [TreeNode] = [root]
    var index = 1 // 1 부터 시작
    
    while !queue.isEmpty && index < values.count {
        // 제일 앞 꺼냄
        let node = queue.removeFirst()
        
        // 왼쪽 자식
        if index < values.count, let leftVal = values[index] {
            node.left = TreeNode(leftVal)
            queue.append(node.left!) // Queue에 추가
        }
        index += 1 // 인덱스 증가
        
        // 오른쪽 자식
        if index < values.count, let rightVal = values[index] {
            node.right = TreeNode(rightVal)
            queue.append(node.right!) // Queue에 추가
        }
        index += 1 // 인덱스 증가
    }
    return root
}
