//
//  ContentView.swift
//  DataStructures
//
//  Created by Austin Betzer on 3/12/21.
//

import SwiftUI

struct ContentView: View {
    
    let node1 = 1
    let node2 = 2
    let node3 = 3
    let node4 = 10
    let node5 = 3
    let node6 = 3
    
    init() {
        
        testReverse()
//        testAppend()
//        testPop()
//        testInsertAt()
//        testRemoveLast()
//        testInsertAt()
//        testRemoveAt()
//        testPush()
//        testRemoveNodesWith()
        
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func testAppend() {
        DebugPrint("We are running append methods")
        
        
        let linkedList = LinkedList(value: node1)
        linkedList.append(value: node2)
        linkedList.append(value: node3)
        linkedList.append(value: node4)
        linkedList.printNodes()
    }
    
    func testInsertAt() {
        let linkedList = LinkedList(value: node1)
        linkedList.printNodes()
        linkedList.insertAt(position: 0, value: node2)
        linkedList.printNodes()
        linkedList.insertAt(position: 3, value: node3) // should fail
        linkedList.insertAt(position: 2, value: node3)
        linkedList.printNodes()
    }
    
    func testRemoveAt() {
        let linkedList = LinkedList(value: node1)
        linkedList.append(value: node2)
        linkedList.append(value: node3)
        linkedList.append(value: node4)
        linkedList.printNodes()
        
        linkedList.removeAt(position: 2) // Pass
        linkedList.printNodes()
        linkedList.removeAt(position: 5) // Fail
        linkedList.removeAt(position: 0) // Pass
        linkedList.printNodes()
    }
    
    func testRemoveLast() {
        let linkedList = LinkedList(value: node6)
        linkedList.append(value: node1)
        linkedList.append(value: node2)
        linkedList.append(value: node3)
        linkedList.append(value: node4)
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
        let linkedList = LinkedList(value: node1)
        linkedList.append(value: node2)
        linkedList.printNodes()
        linkedList.push(value: node3)
        linkedList.printNodes()
    }
    
    func testPop() {
        let linkedList = LinkedList(value: node1)
        linkedList.append(value: node2)
        linkedList.printNodes()
        linkedList.push(value: node3)
        linkedList.printNodes()
        
        linkedList.pop()
        linkedList.printNodes()
    }
    
    func testReverse() {
        let linkedList = LinkedList(value: node1)
        linkedList.append(value: node2)
        linkedList.append(value: node3)
        linkedList.append(value: node4)
        linkedList.printNodes()
        linkedList.reverseList()?.printNodes()
    }
    
    func testRemoveNodesWith(value: Int = 3) {
        let linkedList = LinkedList(value: node1)
        linkedList.append(value: node2)
        linkedList.append(value: node3)
        linkedList.append(value: node4)
        linkedList.append(value: node5)
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
