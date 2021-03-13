//
//  Node.swift
//  DataStructures
//
//  Created by Austin Betzer on 3/12/21.
//

import Foundation

class Node<T> {

    var value: T
    var next: Node<T>?
    
    init(value: T) {
        self.value = value
        self.next = nil
    }
}
