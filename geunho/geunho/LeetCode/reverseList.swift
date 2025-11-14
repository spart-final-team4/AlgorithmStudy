//
//  reverseList.swift
//  geunho
//
//  Created by 정근호 on 11/14/25.
//

import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    
//    if head == nil { return nil }
//
//    var current = head
//    var prev: ListNode? = nil
//
//    while current != nil {
//        prev = current
//        current = current?.next
//        current?.next = prev
//    }
//
//    return head
    
    if head == nil { return nil }
    
    var current = head
    var prev: ListNode? = nil
    
    while current != nil {
        let nextNode = current?.next
        current?.next = prev
        prev = current
        current = nextNode
    }
    
    return prev
}
