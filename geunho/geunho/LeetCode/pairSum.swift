//
//  pairSum.swift
//  geunho
//
//  Created by 정근호 on 11/15/25.
//

import Foundation

func pairSum(_ head: ListNode?) -> Int {
    var values = [Int]()
    var current = head
    
    while current != nil {
        values.append(current!.val)
        current = current?.next
    }
    
    var start = 0, end = values.count-1
    var maxValue = 0
    while start < end {
        let twin = values[start] + values[end]
        maxValue = max(maxValue, twin)
        start += 1
        end -= 1
    }
    
    return maxValue
}

func pairSum1(_ head: ListNode?) -> Int {
    
    // 1. slow/fast로 중간 찾기
    var slow = head, fast = head
    
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    // slow가 뒤쪽 절반의 시작점을 가리킴
    
    // 2. 뒤쪽 절반 뒤집기
    var prev: ListNode? = nil
    var current = slow
    
    while current != nil {
        let nextNode = current?.next
        current?.next = prev
        prev = current
        current = nextNode
    }
    // 이제 prev가 뒤집힌 뒤쪽 절반의 head
    
    // 3. 앞쪽과 뒤쪽 동시 순회화며 최댓값 찾기
    var front = head, back = prev
    var maxSum = 0
    
    while back != nil {
        let twinSum = front!.val + back!.val
        maxSum = max(maxSum, twinSum)
        front = front?.next
        back = back?.next
    }
    return maxSum
}
