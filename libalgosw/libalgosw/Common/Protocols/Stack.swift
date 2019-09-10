//
//  Stack.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

public protocol Stack {
    associatedtype T
    
    func pop() -> T?
    
    func push(item: T)
    
    func peek() -> T?
    
    func clear()
    
    func isEmpty() -> Bool
    
    func getSize() -> Int
}
