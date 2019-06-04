//
//  FrogJmp.swift
//  CodilityLessons
//
//  Created by Akshit Zaveri on 04/06/19.
//  Copyright © 2019 Akshit Zaveri. All rights reserved.
//

import Foundation

final class FrogJmp {
    
    public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        let steps = (Double(Y - X) / Double(D)).rounded(.up)
        return Int(steps)
    }
}
