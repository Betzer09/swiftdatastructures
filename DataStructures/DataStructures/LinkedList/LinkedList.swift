//
//  LinkedList.swift
//  DataStructures
//
//  Created by Austin Betzer on 3/12/21.
//

import Foundation

class LinkedList<T: Equatable>: Sequence {
    var head: Node<T>?
    var tail: Node<T>?
    
    init(value: T?) {
        self.head =  value != nil ? Node(value: value!) : nil
    }
    
//    func makeIterator() -> some IteratorProtocol {
//        return
//    }
    
    func makeIterator() -> AnyIterator<Node<T>> {
        // set up the initial head value
        var current : Node? = head
        return AnyIterator<Node> { () -> Node<T>? in
            // before we leave the current scope move to the next value in the List
            defer { current = current?.next }
            // return the current value
            return current
        }
    }
    
    // Inserts a new node at the head
    func push(value: T) {
        let node = Node(value: value)
        node.next = head
        head = node
    }
    
    // Removes the head node
    func pop() {
        head = head?.next
    }
    
    // Add's a node to the end or aka tail
    func append(value: T) {
        
        let node = Node(value: value)
        // Check the head node
        if head == nil {
            head = node
        } else {
            var currentNode = head
            while currentNode?.next != nil {
                currentNode = currentNode?.next
            }
            currentNode?.next = node
        }
    }
    
    func insertAt(position: Int, value: T) {
        if position == 0 {
            // Do stuff
            let node = Node(value: value)
            node.next = head
            head = node
            return
        }
        
        var currentPosition = 0
        var currentNode = head
        
        // Make sure the next node is there, also make sure the current position isn't greater then the position
        while currentNode?.next != nil {
            if currentPosition + 1 == position {
                // store the next node to set later
                let node = Node(value: value)
                node.next = currentNode?.next
                currentNode?.next = node
            } else {
                currentNode = currentNode?.next
                currentPosition += 1
            }
        }
        
        /**
         If we break out of the while loop, double check that we aren't at the last index
         */
        if currentPosition + 1 == position {
            currentNode?.next = Node(value: value)
            return
        }
        
        if currentPosition > position {
            DebugPrint("We are unable to add your node: \(value) at position: \(position) because it is out of bounds")
        }
        
        if currentNode?.next == nil {
            DebugPrint("We are unable to add your node because it is out of bounds")
        }
    }
    
    func removeAt(position: Int) {
        if position == 0 {
            head = head?.next
            return
        }
        
        var currentPosition = 0
        var currentNode = head
        var previousNode: Node<T>?
        
        for element in 
        
        while currentNode?.next != nil {
            if currentPosition == position {
                previousNode?.next = currentNode?.next
                break
            } else {
                currentPosition += 1
                previousNode = currentNode
                currentNode = currentNode?.next
            }
        }
    }
    
    
    func removeLast() {
        
        if head == nil {
            DebugPrint("There is nothing in the list")
            return
        }
        
        if head?.next == nil {
            DebugPrint("We are removing the head")
            head = nil
        }
        
        var currentNode = head
        var previous: Node<T>?
        
        
        while currentNode?.next != nil  {
            if currentNode?.next == nil {
                previous?.next = nil
            } else {
                previous = currentNode
                currentNode = currentNode?.next
            }
        }
        
        previous?.next = nil
    }
    
//    Create a linked list, reverse it, and print out the result.
    
    func reverseList() -> LinkedList<T>? {
        
        let tempList: LinkedList<T> = self // 1, 2, 3, 10
        let reversedList = LinkedList<T>(value: nil)
        
        var currentNode = tempList.head
        var prev: Node<T>?
        
        for node in tempList {
            
        }
        
        while currentNode?.next != nil   {
            if let value = currentNode?.value {
                reversedList.push(value: value)
                prev = currentNode?.next
                currentNode = currentNode?.next
            }
        }
        
        if let value = prev?.value {
            reversedList.push(value: value)
        }
        
        return reversedList
    }
    
//    Remove nodes with specific values from a linked list.
    func removeNodesWith(value: T, from: LinkedList<T>? = nil) {
        
        if head == nil {
            DebugPrint("There are no nodes to remove")
            return
        }
        
        var currentNode = head
        var currentPosition = 0
        var prev: Node<T>?
        
        while currentNode?.next != nil {
            prev = currentNode
            if currentNode?.value != value {
                currentPosition += 1
                currentNode = currentNode?.next
            } else {
                removeAt(position: currentPosition)
                removeNodesWith(value: value, from: self)
                return
            }
        }
        
        print("We got here")
        if let value = prev?.value {
            removeLast()
        }
    }
    
    
    /// Prints all of the elements in the linkedList
    func printNodes() {
        if head == nil {
            DebugPrint("The linked list is empty.")
            return
        }
        
        DebugPrint("################################")
        DebugPrint(head?.description ?? "No value")
        DebugPrint("################################")
    }
}
