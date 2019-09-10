//
//  HashTableSeparateChainingTests.swift
//  libalgoswTests
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

import XCTest
@testable import libalgosw

class HashTableSeparateChainingTests: XCTestCase {

    private var hashTable: HashTableSeparateChaining<SimpleTransactionKey, Int>? = nil
    
    override func setUp() {
        hashTable =  HashTableSeparateChaining<SimpleTransactionKey, Int>()
    }
    
    override func tearDown() {
        hashTable = nil
    }
    
    func testAdd() {
        XCTFail()
    }
    
    func testGet() {
        XCTFail()
    }
    
    func testRemove() {
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
