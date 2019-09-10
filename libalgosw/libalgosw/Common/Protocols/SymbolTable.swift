//
//  SymbolTable.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 8/26/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

protocol SymbolTable {
    associatedtype T
    
    func put(key: String, value: T)
    
    func get(key: String) -> T?
    
    func delete(key: String)
    
    func contains(key: String) -> Bool
    
    func clear()
    
    func isEmpty() -> Bool
    
    func getSize() -> Int
    
    func getAllKeys() -> [String]
    
    func getAllKeys(with prefix: String) -> [String]
    
    func longestPrefixOf(prefix: String) -> String?
}
