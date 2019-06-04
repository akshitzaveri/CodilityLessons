//
//  CyclicRotation.swift
//  CodilityLessons
//
//  Created by Akshit Zaveri on 31/05/19.
//  Copyright © 2019 Akshit Zaveri. All rights reserved.
//

import Foundation

final class CyclicRotation {
    
    public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
        guard A.count > 1 else { return A }
        
        var shiftBy = K
        if shiftBy > A.count { shiftBy = K % A.count }
        
        let lastElements = Array(A.suffix(shiftBy))
        A.insert(contentsOf: lastElements, at: 0)
        A = Array(A.dropLast(shiftBy))
        return A
    }
}
