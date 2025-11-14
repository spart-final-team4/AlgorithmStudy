//
//  deleteMiddle.swift
//  geunho
//
//  Created by 정근호 on 11/14/25.
//

import Foundation
  
func deleteMiddle(_ head: ListNode?) -> ListNode? {
    
    if head?.next == nil { return nil }

    var slow = head
    var fast = head
    var prev: ListNode? = nil

    while fast?.next != nil {
        prev = slow
        slow = slow?.next
        fast = fast?.next?.next
    }

    prev?.next = slow?.next

    return head
}
