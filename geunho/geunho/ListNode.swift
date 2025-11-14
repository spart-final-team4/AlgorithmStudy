//
//  LinkedList.swift
//  geunho
//
//  Created by 정근호 on 11/14/25.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
}
