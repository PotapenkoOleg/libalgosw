//
//  SingleLinkedList.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

class SingleLinkedList<Key, Value>: List {
    
    func add(key: Key, value: Value, position: InsertPosition) {
        abort()
    }
    
    func add(key: Key, value: Value, before: Key) {
        abort()
    }
    
    func remove(position: RemovePosition) -> Value? {
        abort()
    }
    
    func remove(key: Key) -> Value? {
        abort()
    }
    
    func get(key: Key) -> Value? {
        abort()
    }
    
    func clear() {
        abort()
    }
    
    func isEmpty() -> Bool {
        abort()
    }
    
    func getSize() -> Int {
        abort()
    }
}

extension SingleLinkedList: BagKeyValue {
    func add(key: Key, value: Value) {
        abort()
    }
}
