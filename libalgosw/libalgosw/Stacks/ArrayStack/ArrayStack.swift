//
//  ArrayStack.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

class ArrayStack<T>: Stack {
    func pop() -> T? {
        abort()
    }
    
    func push(item: T) {
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

extension ArrayStack: Bag {
    func add(item: T) {
        abort()
    }
}
