//
//  TernaryTrieTests.swift
//  libalgoswTests
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

import XCTest
@testable import libalgosw

class TernaryTrieTests: XCTestCase {

    private var symbolTable: TernaryTrie<Int>? = nil
    
    override func setUp() {
        symbolTable = TernaryTrie<Int>()
    }
    
    override func tearDown() {
        symbolTable = nil
    }
    
    func testPut() {
        XCTFail()
    }
    
    func testGet() {
        XCTFail()
    }
    
    func testDelete() {
        XCTFail()
    }
    
    func testContains() {
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
    
    func testGetAllKeys() {
        XCTFail()
    }
    
    func testGetAllKeysWithPrefix() {
        XCTFail()
    }
    
    func testLongestPrefixOf() {
        XCTFail()
    }
    
    // MARK: Performance Tests
    
    func testPerformanceExample() {
        self.measure {
            XCTFail()
        }
    }
}
