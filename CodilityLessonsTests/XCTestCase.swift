//
//  XCTestCase.swift
//  CodilityLessonsTests
//
//  Created by Akshit Zaveri on 30/03/20.
//  Copyright © 2020 Akshit Zaveri. All rights reserved.
//

import XCTest

extension XCTestCase {

  private var bundle: Bundle { Bundle(for: type(of: self)) }

  func read<ExpectedType>(fromJSONFile jsonFile: String) -> ExpectedType {
    guard let path = bundle.path(
      forResource: jsonFile,
      ofType: "json"
      ) else { fatalError("\(jsonFile) not found") }

    let url = URL(fileURLWithPath: path)
    let data = try! Data(contentsOf: url)
    return try! JSONSerialization.jsonObject(
      with: data,
      options: []
      ) as! ExpectedType
  }
}
