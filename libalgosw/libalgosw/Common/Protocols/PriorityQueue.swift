//
//  PriorityQueue.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

public protocol PriorityQueue {
    associatedtype T: Equatable
    
    func insert(item: T)
    
    func delete() -> T?
    
    func peek() -> T?
    
    func isEmpty() -> Bool
    
    func getSize() -> Int
    
    func clear()
}
