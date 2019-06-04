//
//  FrogJmpTests.swift
//  CodilityLessonsTests
//
//  Created by Akshit Zaveri on 04/06/19.
//  Copyright © 2019 Akshit Zaveri. All rights reserved.
//

import XCTest
@testable import CodilityLessons

class FrogJmpTests: XCTestCase {

    var sut: FrogJmp!
    
    override func setUp() {
        sut = FrogJmp()
    }

    override func tearDown() {
        sut = nil
    }
    
    func test_X10_Y10_D30_NoJumpNeeded() {
        XCTAssertEqual(sut.solution(10, 10, 30), 0)
    }
    
    func test_X10_Y85_D30_3Jumps() {
        XCTAssertEqual(sut.solution(10, 85, 30), 3)
    }
    
    func test_X3_Y999111321_D7_142730189Jumps() {
        let result = sut.solution(3, 999111321, 7)
        print(result)
        XCTAssertEqual(result, 142730189)
    }
    
    func test_X10000_Y850000000_D30_28333000Jumps() {
        XCTAssertEqual(sut.solution(10000, 850000000, 30), 28333000)
    }
}
