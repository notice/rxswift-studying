//
//  rxswift_studyingTests.swift
//  rxswift-studyingTests
//
//  Created by kan on 2018/02/24.
//  Copyright © 2018年 kan. All rights reserved.
//

import XCTest
@testable import rxswift_studying

class rxswift_studyingTests: XCTestCase {
    
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testIntegerObservalbe() {
    _ = SampleObservable().IntegerObservable().subscribe(
      onNext: { value in
          print("result = \(value)")
      },
      onError: { error in
        print(error)
      },
      onCompleted: {
        print("completed.")
      }
    )
  }

  func testCharObservalbe() {
    _ = SampleObservable().CharObservable().subscribe(
      onNext: { value in
        print("result = \(value)")
      },
      onError: { error in
        print(error)
      },
      onCompleted: {
        print("completed.")
      }
    )
  }

  func testStringObservalbe() {
    _ = SampleObservable().StringObservable().subscribe(
      onNext: { value in
        print("result = \(value)")
    },
      onError: { error in
        print(error)
    },
      onCompleted: {
        print("completed.")
    }
    )
  }

  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }

}

