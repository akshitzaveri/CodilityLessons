//
//  TapeEquilibrium.swift
//  CodilityLessons
//
//  Created by Akshit Zaveri on 30/03/20.
//  Copyright © 2020 Akshit Zaveri. All rights reserved.
//

import Foundation

final class TapeEquilibrium {

  // Assumptions
  // A non-empty array A consisting of N integers is given
  // N is an integer within the range [2..100,000];
  // each element of array A is an integer within the range [−1,000..1,000].

  public func solution(_ A : inout [Int]) -> Int {
    assert(A.count >= 2)
    assert(A.count <= 100_000)

    var equilibriums = [Int]()
    let sumSequence = A.reduce(0, +)
    var sumSequence1 = 0
    for i in 0..<(A.count-1) {
      sumSequence1 += A[i]

      // Usual function
      // let sumSequence2 = sumSequence - sumSequence1
      // let delta = abs(sumSequence1 - sumSequence2)

      // Normalised function
      let delta = abs(2*sumSequence1 - sumSequence)

      equilibriums.append(delta)
    }
    return equilibriums.min() ?? 0
  }
}
