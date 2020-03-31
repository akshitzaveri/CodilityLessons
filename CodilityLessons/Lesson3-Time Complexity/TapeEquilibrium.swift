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

    /// Array to store all equilibriums possible
    var equilibriums = [Int]()

    /// Sum of the entire input A
    let sumSequence = A.reduce(0, +)

    /// Sum of the numbers looped over so far
    var sumSequence1 = 0

    /// Looping over count-1 times. If we have 5 numbers then looping only 4 times.
    for i in 0..<(A.count-1) {

      /// Adding the number i to the existing sum, this is to leverage space available and reduce the time complexity.
      /// Earlier solution was to create a sequence inside the loop and sum all of them, which is not ideal for large datasets.
      sumSequence1 += A[i]

      /// Usual function
      /// let sumSequence2 = sumSequence - sumSequence1
      /// let delta = abs(sumSequence1 - sumSequence2)
      /// Below is the normalised function of above
      let delta = abs(2*sumSequence1 - sumSequence)

      /// Saving the value
      equilibriums.append(delta)
    }

    /// Returning the minimum from the list
    return equilibriums.min() ?? 0
  }
}
