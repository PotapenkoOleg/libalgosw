//
//  LinkedListStackTests.swift
//  libalgoswTests
//
//  Created by Oleg Potapenko on 9/10/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

import XCTest
@testable import libalgosw

class LinkedListStackTests: XCTestCase {

    private var stack: LinkedListStack<Int>? = nil
    
    override func setUp() {
        stack = LinkedListStack<Int>()
    }
    
    override func tearDown() {
        stack = nil
    }
    
    func testPop() {
        XCTFail()
    }
    
    func testPush() {
        XCTFail()
    }
    
    func testPeek() {
        XCTFail()
    }
    
    func testClear() {
        XCTFail()
    }
    
    func testIsEmpty() {
        XCTFail()
    }
    
    func testGetSize() {
        XCTFail()
    }
    
    // MARK: Performance Tests
    
    func testPerformanceExample() {
        self.measure {
            XCTFail()
        }
    }
}
