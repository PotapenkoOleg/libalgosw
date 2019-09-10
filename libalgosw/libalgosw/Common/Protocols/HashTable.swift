//
//  HashTable.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

public protocol HashTable {
    associatedtype Key
    associatedtype Value
    
    func add(key: Key, value: Value)
    
    func get(key: Key) -> Value?
    
    func remove(key: Key) -> Value?
    
    func isEmpty() -> Bool
    
    func getSize() -> Int
    
    func clear()
}
