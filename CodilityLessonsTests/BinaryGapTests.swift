//
//  BinaryGap.swift
//  CodilityLessonsTests
//
//  Created by Akshit Zaveri on 31/05/19.
//  Copyright © 2019 Akshit Zaveri. All rights reserved.
//

import XCTest
@testable import CodilityLessons

class BinaryGapTests: XCTestCase {

    var sut: BinaryGap!
    
    override func setUp() {
        sut = BinaryGap()
    }

    override func tearDown() {
        sut = nil
    }

    func test_9_1001() {
        XCTAssertEqual(sut.solution(9), 2)
    }
    
    func test_529_1000010001() {
        XCTAssertEqual(sut.solution(529), 4)
    }
    
    func test_20_10100() {
        XCTAssertEqual(sut.solution(20), 1)
    }
    
    func test_15_1111() {
        XCTAssertEqual(sut.solution(15), 0)
    }
    
    func test_32_100000() {
        XCTAssertEqual(sut.solution(32), 0)
    }
    
    func test_9999_0010011100001111() {
        XCTAssertEqual(sut.solution(9999), 4)
    }
    
    func test_999999_11110100001000111111() {
        XCTAssertEqual(sut.solution(999999), 4)
    }
    
    func test_2147483647_1111111111111111111111111111111() {
        XCTAssertEqual(sut.solution(2147483647), 0)
    }

    func testPerformance_2147483647_1111111111111111111111111111111() {
        self.measure {
            XCTAssertEqual(sut.solution(2147483647), 0)
        }
    }

}
