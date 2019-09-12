//
//  TernaryTrie.swift
//  libalgosw
//
//  Created by Oleg Potapenko on 9/3/19.
//  Copyright © 2019 Oleg Potapenko. All rights reserved.
//

class TernaryTrie<T>: SymbolTable {
    
    // MARK: Private Fields
    private var root: TernaryTrieNode<T>? = nil
    private var size: Int = 0
    
    // MARK: Node Class
    private class TernaryTrieNode<Item> {
        private let character: Character
        private var value: Item? = nil
        private var left: TernaryTrieNode? = nil
        private var middle: TernaryTrieNode? = nil
        private var right: TernaryTrieNode? = nil
        
        init(character: Character) {
            self.character = character
        }
    }
    
    // MARK: Public Methods
    func put(key: String, value: T) {
        abort()
    }
    
    func get(key: String) -> T? {
        abort()
    }
    
    func delete(key: String) {
        abort()
    }
    
    func contains(key: String) -> Bool {
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
    
    func getAllKeys() -> [String] {
        abort()
    }
    
    func getKeys(with prefix: String) -> [String] {
        abort()
    }
    
    func longestPrefixOf(key: String) -> String? {
        abort()
    }
    
    // MARK: Private Methods
    
//    private func put(node: TernaryTrieNode, key: String, value: T, levelCounter: Int) -> TernaryTrieNode<Any> {
////        let character: Character = "C"//key.charAt(levelCounter);
////        if (node == nil) {
////            node = TernaryTrieNode(character);
////        }
////        if (character < node.character) {
////            node.setLeft(put(node.left(), key, value, levelCounter));
////        } else if (character > node.getCharacter()) {
////            node.setRight(put(node.getRight(), key, value, levelCounter));
////        } else if (levelCounter < key. - 1) {
////                node.setMiddle(put(node.getMiddle(), key, value, levelCounter + 1));
////        } else {
////            if (node.getValue() == nil) {
////                size+=1;
////            }
////            node.setValue(value);
////        }
////        return node;
//    }
    
}
