//
//  OddOccurrencesInArray.swift
//  CodilityLessons
//
//  Created by Akshit Zaveri on 31/05/19.
//  Copyright © 2019 Akshit Zaveri. All rights reserved.
//

import Foundation

final class OddOccurrencesInArray {
    
    public func solution(_ A : inout [Int]) -> Int {
        let sortedArray = A.sorted()
        var currentIndex = 0
        while currentIndex < sortedArray.count - 1 {
            if sortedArray[currentIndex] == sortedArray[currentIndex+1] { currentIndex += 2 }
            else { return sortedArray[currentIndex] }
        }
        return sortedArray.last ?? 0
    }
}
