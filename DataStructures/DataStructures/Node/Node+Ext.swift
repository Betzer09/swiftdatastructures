//
//  Node+Ext.swift
//  DataStructures
//
//  Created by Austin Betzer on 3/12/21.
//

import Foundation
extension Node: CustomStringConvertible {
    var description: String {
        guard let next = next else {return "\(value)"}
        
        return "\(value) -> " + "\(next) "
    }
}
