//
//  HashTableLinearProbingTests.swift
//  libalgoswTests
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

import XCTest
@testable import libalgosw

class HashTableLinearProbingTests: XCTestCase {
    
    private var hashTable: HashTableLinearProbing<SimpleTransactionKey, Int>? = nil

    override func setUp() {
        hashTable = HashTableLinearProbing<SimpleTransactionKey, Int>()
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
