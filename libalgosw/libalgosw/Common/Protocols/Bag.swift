//
//  Bag.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/9/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

protocol Bag {
    associatedtype T
    
    func add(item: T)
    
    func isEmpty() -> Bool
    
    func getSize() -> Int
}
