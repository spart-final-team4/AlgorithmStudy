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
