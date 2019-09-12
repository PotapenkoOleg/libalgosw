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
    
    private func initSymbolTable() {
        symbolTable?.put(key: "she", value: 0)
        symbolTable?.put(key: "sells", value: 1)
        symbolTable?.put(key: "sea", value: 2)
        symbolTable?.put(key: "shells", value: 3)
        symbolTable?.put(key: "by", value: 4)
        symbolTable?.put(key: "the", value: 5)
        symbolTable?.put(key: "sea", value: 6)
        symbolTable?.put(key: "shore", value: 7)
        symbolTable?.put(key: "a", value: 8)
    }
    
    override func setUp() {
        symbolTable = TernaryTrie<Int>()
    }
    
    override func tearDown() {
        symbolTable = nil
    }
    
    func testPut() {
        var expected = 8
        var actual = symbolTable?.get(key: "a")
        XCTAssertEqual(expected, actual)
        
        expected = 4
        actual = symbolTable?.get(key:"by")
        XCTAssertEqual(expected, actual)

        expected = 6
        actual = symbolTable?.get(key:"sea")
        XCTAssertEqual(expected, actual)

        expected = 1
        actual = symbolTable?.get(key:"sells")
        XCTAssertEqual(expected, actual)

        expected = 0
        actual = symbolTable?.get(key:"she")
        XCTAssertEqual(expected, actual)

        expected = 3
        actual = symbolTable?.get(key:"shells")
        XCTAssertEqual(expected, actual)

        expected = 7
        actual = symbolTable?.get(key:"shore")
        XCTAssertEqual(expected, actual)

        expected = 5
        actual = symbolTable?.get(key:"the")
        XCTAssertEqual(expected, actual)
    }
    
    func testGet() {
        var expected = 8;
        var actual = symbolTable?.get(key: "a");
        XCTAssertEqual(expected, actual);

        expected = 4;
        actual = symbolTable?.get(key: "by");
        XCTAssertEqual(expected, actual);

        expected = 6;
        actual = symbolTable?.get(key: "sea");
        XCTAssertEqual(expected, actual);

        expected = 1;
        actual = symbolTable?.get(key: "sells");
        XCTAssertEqual(expected, actual);

        expected = 0;
        actual = symbolTable?.get(key: "she");
        XCTAssertEqual(expected, actual);

        expected = 3;
        actual = symbolTable?.get(key: "shells");
        XCTAssertEqual(expected, actual);

        expected = 7;
        actual = symbolTable?.get(key: "shore");
        XCTAssertEqual(expected, actual);

        expected = 5;
        actual = symbolTable?.get(key: "the");
        XCTAssertEqual(expected, actual);

        // invalid entry
        actual = symbolTable?.get(key: "invalid");
        
        XCTAssertNil(actual);
    }
    
    func testDelete() {
        symbolTable?.delete(key: "a");
        var actual = symbolTable?.get(key: "a");
        XCTAssertNil(actual);

        symbolTable?.delete(key:"by");
        actual = symbolTable?.get(key: "by");
        XCTAssertNil(actual);

        symbolTable?.delete(key:"shore");
        actual = symbolTable?.get(key: "shore");
        XCTAssertNil(actual);

        var expected = 3;
        actual = symbolTable?.get(key: "shells");
        XCTAssertEqual(expected, actual);

        expected = 6;
        actual = symbolTable?.get(key: "sea");
        XCTAssertEqual(expected, actual);

        symbolTable?.delete(key:"sea");
        expected = 1;
        actual = symbolTable?.get(key: "sells");
        XCTAssertEqual(expected, actual);

        // invalid entry
        symbolTable?.delete(key:"by");
        actual = symbolTable?.get(key: "by");
        XCTAssertNil(actual);
    }
    
    func testClear() {
        var actual = symbolTable?.isEmpty();
        XCTAssertFalse(actual!);

        symbolTable?.clear();
        actual = symbolTable?.isEmpty();
        XCTAssertTrue(actual!);
    }
    
    func testIsEmpty() {
        var actual = symbolTable?.isEmpty();
        XCTAssertFalse(actual!);

        symbolTable?.clear();
        actual = symbolTable?.isEmpty();
        XCTAssertTrue(actual!);

        symbolTable?.put(key: "placeholder", value: 42);
        actual = symbolTable?.isEmpty();
        XCTAssertFalse(actual!);
    }
    
    func testGetSize() {
        var expected = 8;
        var actual = symbolTable?.getSize();
        XCTAssertEqual(expected, actual);

        symbolTable?.delete(key:"by");
        expected = 7;
        actual = symbolTable?.getSize();
        XCTAssertEqual(expected, actual);

        symbolTable?.clear();
        expected = 0;
        actual = symbolTable?.getSize();
        XCTAssertEqual(expected, actual);
    }
    
    func testGetAllKeys() {
        let dictionary = [
            "she": 0,
            "sells": 0,
            "shells": 0,
            "by": 0,
            "the": 0,
            "sea": 0,
            "shore":0,
            "a": 0
        ]
        
        let allKeys = (symbolTable?.getAllKeys())!;

        let expected = 8;
        let actual = checkKeys(allKeys: allKeys, dictionsary: dictionary);
        XCTAssertEqual(expected, actual);
    }
    
    func testGetAllKeysWithPrefix() {
        var dictionary = [
            "she": 0,
            "sells": 0,
            "shells": 0,
            "sea": 0,
            "shore": 0
        ]

        var prefix = "s";

        var allKeys = symbolTable?.getKeys(with: prefix);

        var expected = 5;
        var actual = checkKeys(allKeys: allKeys!, dictionsary: dictionary);
        XCTAssertEqual(expected, actual);

        dictionary.removeAll()

        dictionary = [
            "she": 0,
            "shells": 0,
            "shore": 0
        ]

        prefix = "sh";

        allKeys = symbolTable?.getKeys(with: prefix);

        expected = 3;
        actual = checkKeys(allKeys: allKeys!, dictionsary: dictionary);
        XCTAssertEqual(expected, actual);

        prefix = "Invalid";

        allKeys = symbolTable?.getKeys(with: prefix);
        XCTAssertNil(allKeys);
        
    }
    
    func testLongestPrefixOf() {
        var expected = "shells";
        var actual = symbolTable?.longestPrefixOf(key: "shellsort");
        XCTAssertEqual(expected, actual);

        expected = "a";
        actual = symbolTable?.longestPrefixOf(key: "a");
        XCTAssertEqual(expected, actual);

        expected = "";
        actual = symbolTable?.longestPrefixOf(key: "Invalid");
        XCTAssertEqual(expected, actual);

        symbolTable?.clear();

        symbolTable?.put(key: "128", value: 0);
        symbolTable?.put(key: "128.112.055", value: 0);
        symbolTable?.put(key: "128.112.055.015", value: 0);
        symbolTable?.put(key: "128.112.136", value: 0);
        symbolTable?.put(key: "128.112.155.011", value: 0);
        symbolTable?.put(key: "128.112.155.013", value: 0);
        symbolTable?.put(key: "128.112", value: 0);
        symbolTable?.put(key: "128.222", value: 0);
        symbolTable?.put(key: "128.222.136", value: 0);

        expected = "128.112.136";
        actual = symbolTable?.longestPrefixOf(key: "128.112.136.011");
        XCTAssertEqual(expected, actual);

        expected = "128.112";
        actual = symbolTable?.longestPrefixOf(key: "128.112.100.016");
        XCTAssertEqual(expected, actual);

        expected = "128";
        actual = symbolTable?.longestPrefixOf(key: "128.166.123.045");
        XCTAssertEqual(expected, actual);

        symbolTable?.clear();
        symbolTable?.put(key: "a", value: 0);
        expected = "a";
        actual = symbolTable?.longestPrefixOf(key: "a");
        XCTAssertEqual(expected, actual);
        
    }
    
    func checkKeys(allKeys: [String], dictionsary: Dictionary<String, Int>) -> Int {
        var numberOfItems = 0;
        for key in allKeys {
            numberOfItems += 1
            let value = dictionsary[key]
            if value == nil {
                XCTFail()
            }
        }
        return numberOfItems;
    }
    
    // MARK: Performance Tests
    
    func testPerformanceExample() {
        self.measure {
            XCTFail()
        }
    }
}
