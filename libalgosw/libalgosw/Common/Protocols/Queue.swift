//
//  Queue.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

public protocol Queue {
    associatedtype T
    
    func enqueue(item: T);
    
    func dequeue() -> T?
    
    func peek() -> T?
    
    func clear()
    
    func isEmpty() -> Bool
    
    func getSize() -> Int
}
