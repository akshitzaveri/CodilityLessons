//
//  TapeEquilibriumTests.swift
//  CodilityLessonsTests
//
//  Created by Akshit Zaveri on 30/03/20.
//  Copyright © 2020 Akshit Zaveri. All rights reserved.
//

import XCTest
@testable import CodilityLessons

class TapeEquilibriumTests: XCTestCase {

  // Two elements
  func test_Double() {
    // given
    var input = [ 3,1 ]

    // when
    let result = TapeEquilibrium().solution(&input)

    // then
    XCTAssertEqual(result, 2)
  }

  // Simple test with positive numbers, length = 5
  func test_SimplePositive() {
    // given
    var input = [ 3,1,2,4,3 ]

    // when
    let result = TapeEquilibrium().solution(&input)

    // then
    XCTAssertEqual(result, 1)
  }

  // Simple test with negative numbers, length = 5
  func test_SimpleNegative() {
    // given
    var input = [ -3,-1,-2,-4,-3 ]

    // when
    let result = TapeEquilibrium().solution(&input)

    // then
    XCTAssertEqual(result, 1)
  }

  func test_TwoNegativeNumbers() {
    // given
    var input = [ -3,-1 ]

    // when
    let result = TapeEquilibrium().solution(&input)

    // then
    XCTAssertEqual(result, 2)
  }

  // Only one element on one of the sides
  func test_SimpleBoundary() {
    // given
    var input = [ -3,1000 ]

    // when
    let result = TapeEquilibrium().solution(&input)

    // then
    XCTAssertEqual(result, 1003)
  }

  // 100 numbers
  func test_Small_100Numbers() {
    // given
    var input: [Int] = read(fromJSONFile: "large_array_TapeEquilibrium_100Numbers")

    // when
    let result = TapeEquilibrium().solution(&input)

    // then
    XCTAssertEqual(result, 62)
  }

  // 1000 numbers range
  func test_SmallRange_1000Numbers() {
    // given
    var input: [Int] = read(fromJSONFile: "large_array_TapeEquilibrium_1000Numbers")

    // when
    let result = TapeEquilibrium().solution(&input)

    // then
    XCTAssertEqual(result, 56)
  }

  // 1000 numbers range
  func test_100000_Numbers() {
    // given
    var input: [Int] = read(fromJSONFile: "large_array_TapeEquilibrium")

    measure {
      // when
      let result = TapeEquilibrium().solution(&input)

      // then
      XCTAssertEqual(result, 24288)
    }
  }
}
