//
//  maxArea.swift
//  geunho
//
//  Created by 정근호 on 11/12/25.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {

    var left = 0
    var right = height.count-1
    var maxArea = 0
    
    while left < right {
        let minH = min(height[left], height[right])
        let width = right - left
        let area = minH * width
        
        maxArea = max(maxArea, area)
        
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return maxArea
}
