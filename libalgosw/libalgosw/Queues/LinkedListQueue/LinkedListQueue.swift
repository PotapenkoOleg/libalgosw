//
//  LinkedListQueue.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

class LinkedListQueue<T>: Queue {
    
    func enqueue(item: T) {
        abort()
    }
    
    func dequeue() -> T? {
        abort()
    }
    
    func peek() -> T? {
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

extension LinkedListQueue: Bag {
    func add(item: T) {
        abort()
    }
}
