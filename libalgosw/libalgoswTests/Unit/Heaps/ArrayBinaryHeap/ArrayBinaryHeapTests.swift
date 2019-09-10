//
//  ArrayBinaryHeapTests.swift
//  libalgoswTests
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

import XCTest
@testable import libalgosw

class ArrayBinaryHeapTests: XCTestCase {
    
    private var priorityQueue: ArrayBinaryHeap<Character>? = nil
    
    override func setUp() {
        priorityQueue =  ArrayBinaryHeap()
    }
    
    override func tearDown() {
        priorityQueue = nil
    }
    
    func testInsert() {
        XCTFail()
    }
    
    func testDelete() {
        XCTFail()
    }
    
    func testPeek() {
        XCTFail()
    }
    
    func testIsEmpty() {
        XCTFail()
    }
    
    func testGetSize() {
        XCTFail()
    }
    
    func testClear() {
        XCTFail()
    }
    
    // MARK: Performance Tests
    
    func testPerformanceExample() {
        self.measure {
            XCTFail()
        }
    }
}
