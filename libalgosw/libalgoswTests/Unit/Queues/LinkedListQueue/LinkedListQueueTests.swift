//
//  LinkedListQueueTests.swift
//  libalgoswTests
//
//  Created by Oleg Potapenko on 9/10/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

import XCTest
@testable import libalgosw

class LinkedListQueueTests: XCTestCase {
    
    private var queue: LinkedListQueue<Int>? = nil

    override func setUp() {
        queue = LinkedListQueue<Int>()
    }

    override func tearDown() {
        queue = nil
    }

    func testEnqueue() {
        let expected = 42
        queue?.enqueue(item: expected)
        let actual = queue?.dequeue()
        XCTAssertEqual(expected, actual)
    }
    
    func testDequeue() {
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
