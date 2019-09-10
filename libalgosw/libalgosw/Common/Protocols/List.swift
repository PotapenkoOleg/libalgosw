//
//  List.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

protocol List {
    associatedtype Key
    associatedtype Value
    
    func add(key: Key, value: Value, position: InsertPosition)
    
    func add(key: Key, value: Value, before: Key)
    
    func remove(position: RemovePosition) -> Value?
    
    func remove(key: Key) -> Value?
    
    func get(key: Key) -> Value?
    
    func clear()
    
    func isEmpty() -> Bool
    
    func getSize() -> Int
}
