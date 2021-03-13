//
//  ContentView.swift
//  DataStructures
//
//  Created by Austin Betzer on 3/12/21.
//

import SwiftUI

struct ContentView: View {
    
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    let node4 = Node(value: 10)
    let node5 = Node(value: 3)
    let node6 = Node(value: 3)
    
    init() {
        
//        testReverse()
//        testAppend()
//        testPop()
//        testInsertAt()
//        testRemoveLast()
//        testInsertAt()
//        testRemoveAt()
//        testPush()
        testRemoveNodesWith()
        
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func testAppend() {
        DebugPrint("We are running append methods")
        
        
        let linkedList = LinkedList(head: node1)
        linkedList.append(node: node2)
        linkedList.append(node: node3)
        linkedList.append(node: node4)
        linkedList.printNodes()
    }
    
    func testInsertAt() {
        let linkedList = LinkedList(head: node1)
        linkedList.printNodes()
        linkedList.insertAt(position: 0, value: node2.value)
        linkedList.printNodes()
        linkedList.insertAt(position: 3, value: node3.value) // should fail
        linkedList.insertAt(position: 2, value: node3.value)
        linkedList.printNodes()
    }
    
    func testRemoveAt() {
        let linkedList = LinkedList(head: node1)
        linkedList.append(node: node2)
        linkedList.append(node: node3)
        linkedList.append(node: node4)
        linkedList.printNodes()
        
        linkedList.removeAt(position: 2) // Pass
        linkedList.printNodes()
        linkedList.removeAt(position: 5) // Fail
        linkedList.removeAt(position: 0) // Pass
        linkedList.printNodes()
    }
    
    func testRemoveLast() {
        let linkedList = LinkedList(head: node6)
        linkedList.append(node: node1)
        linkedList.append(node: node2)
        linkedList.append(node: node3)
        linkedList.append(node: node4)
        linkedList.printNodes()
        
        
        linkedList.removeLast()
        linkedList.printNodes()
        
        linkedList.removeLast()
        linkedList.printNodes()
        
        linkedList.removeLast()
        linkedList.printNodes()
        
        linkedList.removeLast()
        linkedList.printNodes()
    }
    
    func testPush() {
        let linkedList = LinkedList(head: node1)
        linkedList.append(node: node2)
        linkedList.printNodes()
        linkedList.push(value: node3.value)
        linkedList.printNodes()
    }
    
    func testPop() {
        let linkedList = LinkedList(head: node1)
        linkedList.append(node: node2)
        linkedList.printNodes()
        linkedList.push(value: node3.value)
        linkedList.printNodes()
        
        linkedList.pop()
        linkedList.printNodes()
    }
    
    func testReverse() {
        let linkedList = LinkedList(head: node1)
        linkedList.append(node: node2)
        linkedList.append(node: node3)
        linkedList.append(node: node4)
        linkedList.printNodes()
        linkedList.reverseList().printNodes()
//        linkedList.printNodes()
    }
    
    func testRemoveNodesWith(value: Int = 3) {
        let linkedList = LinkedList(head: node1)
        linkedList.append(node: node2)
        linkedList.append(node: node3)
        linkedList.append(node: node4)
        linkedList.append(node: node5)
        linkedList.printNodes()
        linkedList.removeNodesWith(value: value)
        linkedList.printNodes()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func DebugPrint(_ string: String) {
    print("### \(string)")
}
