//
//  PermMissingElem.swift
//  CodilityLessons
//
//  Created by Akshit Zaveri on 04/06/19.
//  Copyright © 2019 Akshit Zaveri. All rights reserved.
//

import Foundation

final class PermMissingElem {
    
    public func solution(_ A : inout [Int]) -> Int {
        A = A.sorted()
        
        if A.count == A.last { return A.count+1 }

        let array = zip(A.dropFirst(), A).map(-)
        guard let index = array.firstIndex(of: 2) else { return 1 }
        return A[index] + 1
    }
    
    public func solution2(_ A : inout [Int]) -> Int {
        A = A.sorted()
        
        if A.count == A.last { return A.count+1 }
        
        for (index, value) in A.enumerated() {
            if (index+1) != value { return (index+1) }
        }
        
        return A.count + 1
    }
}
