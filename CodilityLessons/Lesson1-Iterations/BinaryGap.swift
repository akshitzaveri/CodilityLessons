//
//  BinaryGap.swift
//  CodilityLessons
//
//  Created by Akshit Zaveri on 31/05/19.
//  Copyright © 2019 Akshit Zaveri. All rights reserved.
//

import Foundation

final class BinaryGap {
    
    // Returns the longest binary gap
    public func solution(_ N : Int) -> Int {
        let binaryString = String(N, radix: 2)
        
        let indices = binaryString.enumerated().compactMap { (offset, element) -> Int? in
            if element == "1" { return offset }
            return nil
        }
        let array = zip(indices.dropFirst(), indices).map(-)
        
        guard let maximumLength = array.max(), maximumLength > 0 else { return 0 }
        
        return maximumLength - 1
    }
}
