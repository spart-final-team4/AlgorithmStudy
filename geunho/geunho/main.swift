//
//  main.swift
//  geunho
//
//  Created by 정근호 on 10/28/25.
//

import Foundation

// MARK: - Result

//print(mergeAlternately("abc", "qpr"))
//print(mergeAlternately2("abc", "qpr"))

//print(kidsWithCandies([2,8,7], 1))

//print(canPlaceFlowers([0,0,1,0,0], 1))
//print(canPlaceFlowers1([0,0,1,0,0], 1))
//
//shortCircuitEvaluation()
//
//print(reverseVowels("a a"))
//print(reverseVowelTwoPointer("leetCode"))

//print(climbStairs(6))

//var arr = [0,1,0,3,12]
//moveZeroes(&arr)
//moveZeroes1(&arr)

//print(reverseWords(" hello world "))

//print(productExceptSelf([5,6,3,4]))

//print(increasingTriplet([2,1,5,0,4,6]))

//print(isSubsequence("abc", "ahbgdc"))

//print(findMaxAverage([1,12,-5,-6,50,3], 4))
//print(maxVowels1("abciiidef", 3))
//print(longestOnes([1,1,1,1,0,0,0,0,1,1,1], 2))
//print(longestSubarray([1,1,0,1]))

//print(largestAltitude([-5,1,5,0,-7]
//))
//print(pivotIndex([1,7,3,6,5,6]))
//print(pivotIndex1([1,7,3,6,5,6]))
//print(findDifference1([1,2,3], [2,4,6]))
//print(uniqueOccurrences1([1,2,3,1,1,3,3]))
//print(closeStrings("aa", "a"))
//print(equalPairs1([[3,2,1],[1,7,6],[2,7,7]]))

//print(removeStars1("leet**cod*e"))
//print(asteroidCollision([3,5,-6,2,-1,4]))

//print(decodeString("3[a]2[bc]"))

//var chars: [Character] = ["a","a","b","b","c","c","c"]
//print(compress(&chars))
//print(maxArea([1,8,6,2,5,4,8,3,7]))
//print(maxOperations([1,2,3,4], 4))

//let obj = RecentCounter()
//let ret1 = obj.ping(1)
//let ret2 = obj.ping(100)
//let ret3 = obj.ping(3001)
//let ret4 = obj.ping(3002)

//print(predictPartyVictory("RRDDD"))

//let node1 = ListNode(1)
//let node2 = ListNode(2)
//let node3 = ListNode(3)
//node1.next = node2
//node2.next = node3
//let linkedList = node1
//deleteMiddle(linkedList)
//
//var current: ListNode? = linkedList
//var result = [String]()
//while current != nil {
//    result.append("\(current!.val)")
//    current = current?.next
//}
//print(result.joined(separator: " → "))
//
//printLinkedList(linkedList)
//let linkedList = createLinkedList([5,4,2,1])
//let oddEven = oddEvenList(linkedList)
//printLinkedList(oddEven)
//let reverse = reverseList(linkedList)
//printLinkedList(reverse)
//print(pairSum(linkedList))

//let values = [3,9,20,nil,nil,15,7]
//let node = createTreeNode(values)
//print(maxDepth(node))

let root = [1,7,0,7,-8,nil,nil]
let node = createTreeNode(root)
//print(rightSideView1(node))
print(maxLevelSum(node))
