//
//  DoubleLinkedListTests.swift
//  libalgoswTests
//
//  Created by Oleg Potapenko on 9/10/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

import XCTest
@testable import libalgosw

class DoubleLinkedListTests: XCTestCase {
    
    private var list: DoubleLinkedList<Int, Int>? = nil
    
    override func setUp() {
        list =  DoubleLinkedList<Int, Int>()
    }
    
    override func tearDown() {
        list = nil
    }
    
    func testAdd() {
        XCTFail()
    }
    
    func testRemove() {
        XCTFail()
    }
    
    func testGet() {
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
