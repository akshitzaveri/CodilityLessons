//
//  PermMissingElemTests.swift
//  CodilityLessonsTests
//
//  Created by Akshit Zaveri on 04/06/19.
//  Copyright © 2019 Akshit Zaveri. All rights reserved.
//

import XCTest
@testable import CodilityLessons

class PermMissingElemTests: XCTestCase {
    
    var sut: PermMissingElem!
    
    override func setUp() {
        sut = PermMissingElem()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func test_EmptyArray() {
        var array = [Int]()
        let result = sut.solution(&array)
        XCTAssertEqual(result, 1)
    }
    
    func test_MiddleElementMissing() {
        var array = [2,3,1,5]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 4)
    }
    
    func test_LastElementMissing() {
        var array = [2,3,1,4]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 5)
    }
    
    func test_FirstElementMissing() {
        var array = [2,3,4,5]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 1)
    }
    
    func test_Large_Array_Missing99478() {
        guard let path = Bundle(for: type(of: self)).path(forResource: "large_array_PermMissing", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        let data = try! Data(contentsOf: url)
        var array = try! JSONSerialization.jsonObject(with: data, options: []) as! [Int]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 99478)
    }
}
