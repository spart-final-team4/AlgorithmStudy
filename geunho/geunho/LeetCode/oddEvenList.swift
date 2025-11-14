//
//  oddEvenList.swift
//  geunho
//
//  Created by 정근호 on 11/14/25.
//

import Foundation

func oddEvenList(_ head: ListNode?) -> ListNode? {
    var odd = head
    var even = head?.next
    let evenHead = head?.next

    while odd?.next != nil && even?.next != nil {
        odd?.next = odd?.next?.next
        odd = odd?.next
        
        even?.next = even?.next?.next
        even = even?.next
    }
    
    odd?.next = evenHead

    return head
}
